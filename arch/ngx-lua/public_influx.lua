local influx = require "resty.influx.object"

local ngx_log = ngx.log
local ngx_ERR = ngx.ERR

--[==[
    init_by_lua '
        _ENV = "DEV"
    ';
]==]--

local INFLUXDB_CONFIG = {
    DEV = {
        host = "127.0.0.1",
        port = 8087,
        proto = "udp",
        db = "xxx_db",
        hostname = "localhost",
        auth = "root:root"
    }
}

-- to influxdb
local function influx_send(table, data)
    local influxdb, err = influx:new({
        host =  INFLUXDB_CONFIG[_ENV].host,
        port = INFLUXDB_CONFIG[_ENV].port,
        proto = INFLUXDB_CONFIG[_ENV].proto,
        db = INFLUXDB_CONFIG[_ENV].db,
        hostname = INFLUXDB_CONFIG[_ENV].hostname,
        auth = INFLUXDB_CONFIG[_ENV].auth
    })

    if (not influxdb) then
        ngx_log(ngx_ERR, "influxdb connection failed : ", err)
        return
    end

    local tags = data.tag
    local fields = data.field
    influxdb:set_measurement(table)
    for k, v in pairs(tags) do
        influxdb:add_tag(k, v)
    end

    for k, v in pairs(fields) do
        influxdb:add_field(k, v)
    end

    influxdb:buffer()
    local ok, err = influxdb:flush()
    if (not ok) then
        ngx_log(ngx_ERR, "influxdb send failed : ", err)
    end
    return "ok", err
end

local _M = {
    _VERSION = "1.0.0",
    influx_send = influx_send
}

return _M