# AxisConnect_PM

A Nuke tool that automatically connects Axis nodes to AxisToRender — streamlining the setup of 3D render pipelines from CameraTracker solves and point cloud data.

## Features

- Automatically connects multiple Axis nodes to a render setup
- Eliminates manual wiring when working with CameraTracker point clouds
- Includes helper AxisToRender script for complete workflow

## Files

| File | Description |
|------|-------------|
| `AxisConnect_PM_v003.tcl` | Latest version (recommended) |
| `AxisConnect_PM_v002.nk` | Previous version as Nuke script |
| `AxisConnect_PM.nk` | Original version |
| `AxisToRender.tcl` | Helper script for render setup |

## Installation

1. Copy the `.tcl` files to your `.nuke` directory
2. Add to your `menu.py`:
   ```python
   toolbar = nuke.menu('Nodes')
   m = toolbar.addMenu('AxisConnect')
   m.addCommand('AxisConnect', 'nuke.load("AxisConnect_PM_v003"); AxisConnect_PM()')
   m.addCommand('AxisToRender', 'nuke.load("AxisToRender"); AxisToRender()')
   ```

Or source directly in Nuke's Script Editor when needed.

## Usage

1. Create or import Axis nodes from your CameraTracker solve
2. Select the Axis nodes you want to connect
3. Run AxisConnect_PM
4. The tool automatically creates the connections to your render pipeline

**Use cases:**
- Setting up multiple 3D locators from CameraTracker for rendering
- Batch connecting imported Axis nodes to a ScanlineRender setup
- Streamlining projection workflows with multiple reference points

## Related

This tool is also included in [CameraTracker_Utils](https://github.com/petermercell/CameraTracker_Utils) alongside other CameraTracker workflow tools.

## License

[MIT](LICENSE.txt)

## Author

[Peter Mercell](https://github.com/petermercell)
