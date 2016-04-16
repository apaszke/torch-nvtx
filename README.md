# nvtx

This package exposes a Lua API to NVIDIA Toolkit Extensions. It's a very convenient way to annotate code regions, that makes profiling with NVIDIA Visual Profiler easier.

## Installation

Please make sure that you have CUDA Toolkit installed and run the following commands:

```bash
git clone https://github.com/apaszke/torch-nvtx
cd torch-nvtx; luarocks make rocks/nvtx-0.1-1.rockspec
```

## How to use it?

There are two kinds of events - marks and ranges.

Marks allow you to highlight events that happen during the execution.

Ranges can show how long did some part of your program has been running, and they are organised in a stack fashion - you can mark sub-parts with nested ranges.

## API

* `nvtx.pushRange(name, [color])` - Put a new range on the stack
* `nvtx.popRange()` - Pop last range
* `nvtx.mark(name, [color])` - Mark an event

`color` argument is optional and allows you to customise how individual ranges/marks will be displayed in the Visual Profiler.

**Please note that you should pop all ranges before your program quits, or they won't be displayed in the profiler.**
