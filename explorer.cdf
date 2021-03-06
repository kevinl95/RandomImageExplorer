(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     10249,        290]
NotebookOptionsPosition[     10217,        265]
NotebookOutlinePosition[     10562,        280]
CellTagsIndexPosition[     10519,        277]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "Random Image Explorer\n",
 StyleBox["Kevin Loeffler, 2016. kevinmichaelloeffler.com", "Subtitle"]
}], "Title",
 CellChangeTimes->{{3.680562975820944*^9, 3.680563006693398*^9}}],

Cell["\<\
This is a random image generator inspired by Reddit\[CloseCurlyQuote]s \
/r/allthepictures. The idea is to generate a large number of images randomly \
(the original proposition was for 100x100 images) and then to hopefully \
eventually find meaningful images within the randomness. Of course, the \
probability of doing so is low but I took the opportunity to make my own tool \
since the idea is so exciting!\
\>", "Text",
 CellChangeTimes->{{3.680570382073137*^9, 3.6805704667219787`*^9}}],

Cell[CellGroupData[{

Cell["Setup", "Section",
 CellChangeTimes->{{3.6805704725223103`*^9, 3.680570473637374*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"v", ":=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"RandomImage", "[", 
      RowBox[{"1", ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "y"}], "}"}], ",", 
       RowBox[{"ColorSpace", "\[Rule]", " ", "\"\<RGB\>\""}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "Images"}], "}"}]}], "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.6805665279492474`*^9, 3.6805665576289005`*^9}, {
   3.6805673196641564`*^9, 3.680567342720475*^9}, {3.6805673918342843`*^9, 
   3.680567414947606*^9}, {3.6805674856806517`*^9, 3.680567500960526*^9}, 
   3.6805675631670837`*^9, 3.6805686448467755`*^9}],

Cell["\<\
Create a table with a RandomImage object inside it with an RGB colorspace. \
The number of random images is from 0 to the parameter Images which we will \
set next in the manipulate box. The table keeps track of all of our random \
images.\
\>", "Text",
 CellChangeTimes->{{3.680570481189806*^9, 3.6805705178839045`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Manipulate", "Section",
 CellChangeTimes->{{3.6805705236322336`*^9, 3.6805705256553497`*^9}}],

Cell["\<\
Here we setup an interactive menu where one can set the size of the image (x \
and y) and the number of images they want to generate (images). The random \
images are animated so that the user can watch the images as a movie and look \
for patterns.\
\>", "Text",
 CellChangeTimes->{{3.680570532263727*^9, 3.6805705666786957`*^9}}],

Cell[BoxData[
 RowBox[{"m", "=", 
  RowBox[{"Manipulate", "[", 
   RowBox[{
    RowBox[{"ListAnimate", "[", 
     RowBox[{"v", ",", "10"}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x", ",", "100"}], "}"}], ",", 
      RowBox[{"ControlType", "\[Rule]", "InputField"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "Small"}], ",", 
      RowBox[{"ControlPlacement", "\[Rule]", "1"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"y", ",", "100"}], "}"}], ",", 
      RowBox[{"ControlType", "\[Rule]", "InputField"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "Small"}], ",", 
      RowBox[{"ControlPlacement", "\[Rule]", "2"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Images", ",", "100"}], "}"}], ",", 
      RowBox[{"ControlType", "\[Rule]", "InputField"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "Small"}], ",", 
      RowBox[{"ControlPlacement", "\[Rule]", "3"}]}], "}"}], ",", 
    RowBox[{"Grid", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"Manipulate`Place", "[", "1", "]"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"Manipulate`Place", "[", "2", "]"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"Manipulate`Place", "[", "3", "]"}], "}"}]}], "}"}], "]"}], 
    ",", 
    RowBox[{"Initialization", "\[RuleDelayed]", 
     RowBox[{"{", 
      RowBox[{"v", ":=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"RandomImage", "[", 
          RowBox[{"1", ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}], ",", 
           RowBox[{"ColorSpace", "\[Rule]", "\"\<RGB\>\""}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "Images"}], "}"}]}], "]"}]}], "}"}]}], ",", 
    RowBox[{"AutoAction", "\[Rule]", "True"}], ",", 
    RowBox[{"Deployed", "\[Rule]", "True"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.680568911736355*^9, 3.680568912326356*^9}, {
  3.6805689566372137`*^9, 3.680568957148215*^9}, {3.6805690186733055`*^9, 
  3.6805690188733053`*^9}},
 NumberMarks->False],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Images$$ = 100, $CellContext`x$$ = 
    100, $CellContext`y$$ = 100, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`x$$], 100}}, {{
       Hold[$CellContext`y$$], 100}}, {{
       Hold[$CellContext`Images$$], 100}}, {
      Hold[
       Grid[{{
          Manipulate`Place[1]}, {
          Manipulate`Place[2]}, {
          Manipulate`Place[3]}}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {329., {85., 92.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Images$$ = 100, $CellContext`x$$ = 
        100, $CellContext`y$$ = 100}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> ListAnimate[$CellContext`v, 10], 
      "Specifications" :> {{{$CellContext`x$$, 100}, ControlType -> 
         InputField, ImageSize -> Small, ControlPlacement -> 
         1}, {{$CellContext`y$$, 100}, ControlType -> InputField, ImageSize -> 
         Small, ControlPlacement -> 2}, {{$CellContext`Images$$, 100}, 
         ControlType -> InputField, ImageSize -> Small, ControlPlacement -> 
         3}, 
        Grid[{{
           Manipulate`Place[1]}, {
           Manipulate`Place[2]}, {
           Manipulate`Place[3]}}]}, 
      "Options" :> {AutoAction -> True, Deployed -> True}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{380., {150., 157.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`v := Table[
         RandomImage[
         1, {$CellContext`x$$, $CellContext`y$$}, ColorSpace -> 
          "RGB"], {$CellContext`i, $CellContext`Images$$}]}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input",
 CellChangeTimes->{3.68056903546833*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Export", "Section",
 CellChangeTimes->{{3.6805705722910166`*^9, 3.6805705737901025`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Button", "[", 
  RowBox[{"\"\<Export as .GIF\>\"", ",", 
   RowBox[{"Export", "[", 
    RowBox[{
     RowBox[{"SystemDialogInput", "[", 
      RowBox[{"\"\<FileSave\>\"", ",", "\"\<.gif\>\""}], "]"}], ",", "v", 
     ",", "\"\<GIF\>\""}], "]"}], ",", 
   RowBox[{"Method", "\[Rule]", "\"\<Queued\>\""}]}], "]"}]], "Input",
 CellChangeTimes->{{3.6805668254226427`*^9, 3.680566842088873*^9}, {
  3.6805671038927736`*^9, 3.6805671118059874`*^9}}],

Cell[BoxData[
 ButtonBox["\<\"Export as .GIF\"\>",
  Appearance->Automatic,
  ButtonFunction:>Export[
    SystemDialogInput["FileSave", ".gif"], $CellContext`v, "GIF"],
  Evaluator->Automatic,
  Method->"Queued"]], "Output",
 CellChangeTimes->{
  3.6805668497322874`*^9, 3.6805671369680347`*^9, {3.680567216873277*^9, 
   3.6805672234236517`*^9}, 3.6805674591601353`*^9, 3.680568601199992*^9, 
   3.680568970408233*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Button", "[", 
  RowBox[{"\"\<Export as .SWF\>\"", ",", 
   RowBox[{"Export", "[", 
    RowBox[{
     RowBox[{"SystemDialogInput", "[", 
      RowBox[{"\"\<FileSave\>\"", ",", "\"\<.avi\>\""}], "]"}], ",", "v", 
     ",", "\"\<AVI\>\""}], "]"}], ",", 
   RowBox[{"Method", "\[Rule]", "\"\<Queued\>\""}]}], "]"}]], "Input",
 CellChangeTimes->{{3.680569603356784*^9, 3.6805696366918535`*^9}}],

Cell[BoxData[
 ButtonBox["\<\"Export as .SWF\"\>",
  Appearance->Automatic,
  ButtonFunction:>Export[
    SystemDialogInput["FileSave", ".avi"], $CellContext`v, "AVI"],
  Evaluator->Automatic,
  Method->"Queued"]], "Output",
 CellChangeTimes->{{3.6805696117587967`*^9, 3.680569638341939*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{769, 873},
WindowMargins->{{Automatic, -1090}, {Automatic, 109}},
FrontEndVersion->"10.0 for Microsoft Windows (64-bit) (July 1, 2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 194, 4, 139, "Title"],
Cell[1683, 41, 502, 8, 87, "Text"],
Cell[CellGroupData[{
Cell[2210, 53, 92, 1, 70, "Section"],
Cell[2305, 56, 651, 15, 31, "Input"],
Cell[2959, 73, 331, 6, 68, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3327, 84, 99, 1, 70, "Section"],
Cell[3429, 87, 341, 6, 68, "Text"],
Cell[3773, 95, 2113, 54, 192, "Input"],
Cell[5889, 151, 2496, 54, 324, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8422, 210, 95, 1, 70, "Section"],
Cell[CellGroupData[{
Cell[8542, 215, 467, 10, 52, "Input"],
Cell[9012, 227, 419, 10, 42, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9468, 242, 414, 9, 52, "Input"],
Cell[9885, 253, 292, 7, 42, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature jv0AkyAf54HlaCKzMOAkCqjt *)
