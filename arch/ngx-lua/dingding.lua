local _M = {
    _VERSION = "1.0.0"
}

local concat = table.concat

local DING_TOKEN = "xxxxxx"
local DING_DINGDING = "https://oapi.dingtalk.com/robot/send?access_token="


local function send_dingding_api(uri, message)

    local args = concat({
        "uri=", uri,
    }, "")

    local result = ngx.location.capture("/internal/proxy/http",
        {
            method = ngx.HTTP_POST,
            body = message,
            args   = args
        }
    )

end
return _M