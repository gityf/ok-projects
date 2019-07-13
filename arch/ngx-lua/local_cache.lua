local nginx_shared = ngx.shared
local local_cache = nginx_shared.xxx_local_cache
local tonumber = tonumber

local function cache_get(key)
    if not local_cache then
        return nil
    end
    return local_cache:get(key)
end

local function cache_set(key, value)
    if not local_cache then
        return nil
    end
    -- 10min
    return local_cache:set(key, value, 6000)
end

local function cache_rpush(key, value)
    if not local_cache then
        return nil
    end
    local_cache:rpush(key, value)
    return "ok"
end

local function cache_rpop(key)
    if not local_cache then
        return nil, nil
    end
    local res, err = local_cache:rpop(key, value)
    if not res then
        return nil, err
    end

    return res, "ok"
end

local function cache_lpush(key, value)
    if not local_cache then
        return nil
    end
    local_cache:lpush(key, value)
    return "ok"
end

local function cache_lpop(key)
    if not local_cache then
        return nil, nil
    end
    local res, err = local_cache:lpop(key, value)
    if not res then
        return nil, err
    end

    return res, "ok"
end

local function cache_del(key)
    if not local_cache then
        return nil
    end
    local_cache:delete(key)
    return "ok"
end

local function cache_flush_all(key)
    if not local_cache then
        return nil
    end
    local_cache:flush_all(key)
    return "ok"
end

local function cache_llen(key)
    if not local_cache then
        return 0, nil
    end
    local len , err = local_cache:llen(key)
    if not (tonumber(len) > 0) then
        return 0, nil
    end
    return len, "ok"
end

local _M = {
    cache_set = cache_set,
    cache_get = cache_get,
    cache_llen = cache_llen,
    cache_del = cache_del,
    cache_lpush = cache_lpush,
    cache_lpop = cache_lpop,
    cache_rpush = cache_rpush,
    cache_rpop = cache_rpop,
    cache_flush_all = cache_flush_all
}

return _M