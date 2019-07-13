local redis = require("resty.redis")
local ngx_log = ngx.log
local ngx_ERR = ngx.ERR

local function close_redis(red)
    if not red then
        return
    end

    -- ms
    local pool_max_idle_time = 10000
    local pool_size = 100
    local ok, err = red:set_keepalive(pool_max_idle_time, pool_size)

    if not ok then
        ngx_log(ngx_ERR, "set redis set_keepalive error : ", err)
    end
end

local function read_redis(ip, port, keys)
    local red = redis:new()
    red:set_timeout(1000)
    local ok, err = red:connect(ip, port)
    if not ok then
        ngx_log(ngx_ERR, "connect redis error : ", err)
        return close_redis(red)
    end

    local resp = nil
    if #keys == 1 then
        resp, err = red:get(keys)
    else
        resp, err = red:mget(keys)
    end

    if not resp then
        ngx_log(ngx_ERR, "get redis content error : ", err)
        return close_redis(red)
    end

    if resp == ngx.null then
        resp = nil
    end
    close_redis(red)

    return resp
end

local function read_http(args)
    local resp, err = ngx.location.capture("/backend/app", {
        method = ngx.HTTP_GET,
        args = args
    })

    if not resp then
        ngx_log(ngx_ERR, "request error : ", err)
        return
    end

    if resp.status ~= 200 then
        ngx_log(ngx_ERR, "request error, status : ", resp.status)
        return
    end

    return resp.body
end

local _M = {
    read_redis = read_redis,
    read_http = read_http
}

return _M
