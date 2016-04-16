local ffi = require 'ffi'
local nvtx = {}

ffi.cdef[[
void nvtx_range_push(const char *name, const int color_id);
void nvts_range_pop();
]]

nvtx.C = ffi.load(package.searchpath('libnvtx', package.cpath))

return nvtx
