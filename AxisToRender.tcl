Group {
 name AxisToRender4
 knobChanged "node = nuke.thisNode()\nknob = nuke.thisKnob()\nif knob.name() in ('render', 'showPanel'):\n    mode = node\['render'].value()\n    if mode == 'Color':\n        node\['render_mode'].setValue(\"4\")\n    elif mode == 'Wireframe':\n        node\['render_mode'].setValue(\"1\")\n    elif mode == 'Color + Wireframe':\n        node\['render_mode'].setValue(\"5\")"
 tile_color 0x7f7f7fff
 selected true
 xpos 329
 ypos -73
 addUserKnob {20 Settings l "Axis To Render"}
 addUserKnob {68 Geo l "Geometry Choice" M {Star Cone ""}}
 Geo Cone
 addUserKnob {4 render l Render M {Color Wireframe "Color + Wireframe"}}
 addUserKnob {41 render_mode l INVISIBLE +INVISIBLE T TransformGeo1.render_mode}
 addUserKnob {18 Color}
 Color {0.5 0 0.5}
 addUserKnob {6 Color_panelDropped l "panel dropped state" -STARTLINE +HIDDEN}
 addUserKnob {22 randomcolor l " Random Color " -STARTLINE T "import random\nn=nuke.thisNode()\nRed=random.uniform(0,1)\nGreen=random.uniform(0,1)\nBlue=random.uniform(0,1)\nn\['Color'].setValue(\[Red,Green,Blue])\nhexColour = int('%02x%02x%02x%02x' % (Red*255,Green*255,Blue*255,1),16)\nn\['tile_color'].setValue( hexColour )"}
 addUserKnob {26 ""}
 addUserKnob {26 S01 l " " T " "}
 addUserKnob {41 scaling_1 l Scale T TransformGeo2.scaling}
 addUserKnob {41 uniform_scale l "Uniform Scale" T TransformGeo1.uniform_scale}
 addUserKnob {26 by1 l " " T " \n"}
 addUserKnob {26 by2 l " " T "                                                                                               "}
 addUserKnob {26 Gat l " " -STARTLINE T "<font color=\"#1C1C1C\"> v01 - Gat - 2017"}
 addUserKnob {1 output l INVISIBLE +INVISIBLE}
 output "\[value render]"
}
 Input {
  inputs 0
  name InputAxis
  xpos 268
  ypos 996
 }
 Constant {
  inputs 0
  channels rgb
  color {{parent.Color.r} {parent.Color.g} {parent.Color.b} 0}
  format "256 256 0 0 256 256 1 square_256"
  name Constant1
  xpos 267
  ypos 838
  postage_stamp false
  addUserKnob {20 User}
  addUserKnob {7 color_red}
  addUserKnob {7 color_blue}
  addUserKnob {7 color_gren}
 }
 Cylinder {
  inputs 0
  rows 0
  name Cylinder1
  xpos 637
  ypos 653
 }
 EditGeo {
  keys {{30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59}
    }
  values {{-2.980219849e-09 0 -0.9999957085 -0.2079108059 0 -0.978143394 -0.4067349136 0 -0.9135414958 -0.5877827406 0 -0.8090135455 -0.7431417108 0 -0.6691276431 -0.8660217524 0 -0.4999977946 -0.9510524869 0 -0.3090156317 -0.994517684 0 -0.1045279428 -0.994517684 0 0.1045280993 -0.9510524273 0 0.3090157509 -0.8660216928 0 0.4999979734 -0.7431416512 0 0.6691278815 -0.587782681 0 0.8090136647 -0.406734854 0 0.913541615 -0.2079107165 0 0.9781435132 8.44421848e-08 0 0.9999957681 0.2079108953 0 0.9781434536 0.406735003 0 0.9135415554 0.5877828598 0 0.8090135455 0.7431417108 0 0.6691277027 0.8660217524 0 0.4999978244 0.9510524273 0 0.3090158105 0.994517684 0 0.1045279279 0.9945176244 0 -0.1045283601 0.9510524273 0 -0.3090157807 0.8660217524 0 -0.499997735 0.7431415915 0 -0.6691278219 0.5877824426 0 -0.8090137839 0.4067347646 0 -0.913541615 0.2079108655 0 -0.9781433344}
    }
  translate {-1.986336512e-10 1 4.023313593e-08}
  name EditGeo1
  xpos 637
  ypos 677
 }
 TransformGeo {
  translate {0 -1 0}
  rotate {0 0 180}
  scaling {{parent.TransformGeo2.scaling.x} {parent.TransformGeo2.scaling.y} {parent.TransformGeo2.scaling.z}}
  uniform_scale {{parent.TransformGeo1.uniform_scale}}
  pivot_translate {0 1 0}
  name TransformGeo3
  xpos 637
  ypos 701
 }
 Sphere {
  inputs 0
  selectable false
  rows 2
  columns 2
  rotate {90 90 0}
  scaling {0.2 {1+TransformGeo2.scaling.y} {scaling.x}}
  uniform_scale {{parent.TransformGeo1.uniform_scale}}
  name SphereX
  xpos 321
  ypos 477
  addUserKnob {20 PositionPass l "Position Pass"}
  addUserKnob {18 pointPosition l "Point Position"}
  pointPosition {0 0 0}
  addUserKnob {6 pointPosition_panelDropped l "panel dropped state" -STARTLINE +HIDDEN}
 }
 Sphere {
  inputs 0
  selectable false
  rows 2
  columns 2
  rotate {90 0 0}
  scaling {0.2 {1+TransformGeo2.scaling.z} {scaling.x}}
  uniform_scale {{parent.TransformGeo1.uniform_scale}}
  name SphereZ
  xpos 526
  ypos 478
  addUserKnob {20 PositionPass l "Position Pass"}
  addUserKnob {18 pointPosition l "Point Position"}
  pointPosition {0 0 0}
  addUserKnob {6 pointPosition_panelDropped l "panel dropped state" -STARTLINE +HIDDEN}
 }
 Sphere {
  inputs 0
  selectable false
  rows 2
  columns 2
  scaling {0.2 {1+TransformGeo2.scaling.x} {scaling.x}}
  uniform_scale {{parent.TransformGeo1.uniform_scale}}
  name SphereY
  xpos 426
  ypos 476
  addUserKnob {20 PositionPass l "Position Pass"}
  addUserKnob {18 pointPosition l "Point Position"}
  pointPosition {0 0 0}
  addUserKnob {6 pointPosition_panelDropped l "panel dropped state" -STARTLINE +HIDDEN}
 }
 MergeGeo {
  inputs 3
  selectable false
  name MergeGeo1
  xpos 426
  ypos 540
 }
 Switch {
  inputs 2
  which {{Geo}}
  name Switch1
  label "\[value which]"
  xpos 432
  ypos 695
 }
 ApplyMaterial {
  inputs 2
  selectable false
  name ApplyMaterial1
  xpos 432
  ypos 838
 }
 TransformGeo {
  inputs 2
  selectable false
  render_mode textured
  uniform_scale 4
  name TransformGeo1
  xpos 432
  ypos 996
 }
set N31db5600 [stack 0]
 Output {
  name Output1
  xpos 432
  ypos 1069
 }
push $N31db5600
 Viewer {
  frame 152
  frame_range 1-385
  masking_ratio 1.85
  name Viewer1
  xpos 432
  ypos 1020
 }
 TransformGeo {
  inputs 0
  selectable false
  render_mode textured
  uniform_scale 5
  name TransformGeo2
  xpos 226
  ypos 641
  hide_input true
 }
end_group
