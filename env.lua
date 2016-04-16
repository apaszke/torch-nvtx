local ffi = require 'ffi'

local nvtx = {}

ffi.cdef[[
void nvtx_range_push(const char *name, const uint32_t color);
void nvtx_range_pop();
void nvtx_mark(const char *name, const uint32_t color);
]]

nvtx.C = ffi.load(package.searchpath('libnvtx', package.cpath))

return nvtx
