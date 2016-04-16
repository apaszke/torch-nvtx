#include "cuda.h"
#include "nvToolsExt.h"

void make_event_attr(nvtxEventAttributes_t *attr, const char *name, const uint32_t color)
{
    attr->version = NVTX_VERSION;
    attr->size = NVTX_EVENT_ATTRIB_STRUCT_SIZE;
    attr->colorType = NVTX_COLOR_ARGB;
    attr->color = color;
    attr->messageType = NVTX_MESSAGE_TYPE_ASCII;
    attr->message.ascii = name;
}

void nvtx_range_push(const char *name, const uint32_t color)
{
    nvtxEventAttributes_t attr = {0};
    make_event_attr(&attr, name, color);
    nvtxRangePushEx(&attr);
}

void nvtx_range_pop()
{
    nvtxRangePop();
}

void nvtx_mark(const char *name, const uint32_t color)
{
    nvtxEventAttributes_t attr = {0};
    make_event_attr(&attr, name, color);
    nvtxMarkEx(&attr);
}
