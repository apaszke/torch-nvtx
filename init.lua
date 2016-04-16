local nvtx = require 'nvtx.env'

nvtx.colors = {
    blue        = 0x003498db,
    green       = 0x002ecc71,
    yellow      = 0x00f1c40f,
    orange      = 0x00e67e22,
    red         = 0x00e74c3c,
    purple      = 0x009b59b6,
    navy        = 0x0034495e,
    gray        = 0x0095a5a6,
    silver      = 0x00bdc3c7,
    darkgray    = 0x007f8c8d,
}

function nvtx.pushRange(name, color)
    nvtx.C.nvtx_range_push(name, color)
end

function nvtx.popRange()
    nvtx.C.nvtx_range_pop()
end

function nvtx.mark(name, color)
    nvtx.C.nvtx_mark(name, color)
end

return nvtx
