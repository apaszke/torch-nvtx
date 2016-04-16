local nvtx = require 'nvtx.env'

function nvtx.pushRange(name, color)
    nvtx.C.nvtx_range_push(name, color)
end

function nvtx.popRange()
    nvtx.C.nvtx_range_pop()
end

return nvtx
