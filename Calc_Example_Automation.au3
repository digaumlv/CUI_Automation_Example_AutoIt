#include "CUIAutomation2.au3"

Func Num($number)

	Local $oUIAutomation = ObjCreateInterface($sCLSID_CUIAutomation, $sIID_IUIAutomation, $dtagIUIAutomation)

	Local $pDesktop, $oDesktop
	$oUIAutomation.GetRootElement($pDesktop)
	$oDesktop = ObjCreateInterface($pDesktop, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	Local $pCondition
	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, "ApplicationFrameWindow", $pCondition)

	Local $pCalc, $oCalc
	$oDesktop.FindFirst($TreeScope_Descendants, $pCondition, $pCalc)
	$oCalc = ObjCreateInterface($pCalc, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, 'Windows.UI.Core.CoreWindow', $pCondition)

	Local $pCalc1, $oCalc1
	$oCalc.FindFirst($TreeScope_Descendants, $pCondition, $pCalc1)
	$oCalc1 = ObjCreateInterface($pCalc1, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, 'LandmarkTarget', $pCondition)

	Local $pGroup, $oGroup
	$oCalc1.FindFirst($TreeScope_Descendants, $pCondition, $pGroup)
	$oGroup = ObjCreateInterface($pGroup, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_AutomationIdPropertyId, 'NumberPad', $pCondition)

	Local $pGroup2, $oGroup2
	$oGroup.FindFirst($TreeScope_Descendants, $pCondition, $pGroup2)
	$oGroup2 = ObjCreateInterface($pGroup2, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_AutomationIdPropertyId, $number, $pCondition)

	Local $pButton, $oButton
	$oGroup2.FindFirst($TreeScope_Descendants, $pCondition, $pButton)
	$oButton = ObjCreateInterface($pButton, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	Local $pInvoke, $oInvoke
	$oButton.GetCurrentPattern($UIA_InvokePatternId, $pInvoke)
	$oInvoke = ObjCreateInterface($pInvoke, $sIID_IUIAutomationInvokePattern, $dtagIUIAutomationInvokePattern)
	$oInvoke.Invoke()
EndFunc   ;==>Num

Func Operators($Operators)

	Local $oUIAutomation = ObjCreateInterface($sCLSID_CUIAutomation, $sIID_IUIAutomation, $dtagIUIAutomation)

	Local $pDesktop, $oDesktop
	$oUIAutomation.GetRootElement($pDesktop)
	$oDesktop = ObjCreateInterface($pDesktop, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	Local $pCondition
	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, "ApplicationFrameWindow", $pCondition)

	Local $pCalc, $oCalc
	$oDesktop.FindFirst($TreeScope_Descendants, $pCondition, $pCalc)
	$oCalc = ObjCreateInterface($pCalc, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, 'Windows.UI.Core.CoreWindow', $pCondition)

	Local $pCalc1, $oCalc1
	$oCalc.FindFirst($TreeScope_Descendants, $pCondition, $pCalc1)
	$oCalc1 = ObjCreateInterface($pCalc1, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, 'LandmarkTarget', $pCondition)

	Local $pGroup, $oGroup
	$oCalc1.FindFirst($TreeScope_Descendants, $pCondition, $pGroup)
	$oGroup = ObjCreateInterface($pGroup, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_AutomationIdPropertyId, 'StandardOperators', $pCondition)

	Local $pGroup2, $oGroup2
	$oGroup.FindFirst($TreeScope_Descendants, $pCondition, $pGroup2)
	$oGroup2 = ObjCreateInterface($pGroup2, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_AutomationIdPropertyId, $Operators, $pCondition)

	Local $pButton, $oButton
	$oGroup2.FindFirst($TreeScope_Descendants, $pCondition, $pButton)
	$oButton = ObjCreateInterface($pButton, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	Local $pInvoke, $oInvoke
	$oButton.GetCurrentPattern($UIA_InvokePatternId, $pInvoke)
	$oInvoke = ObjCreateInterface($pInvoke, $sIID_IUIAutomationInvokePattern, $dtagIUIAutomationInvokePattern)
	$oInvoke.Invoke()
EndFunc   ;==>Operators

Func GetResult()

	Local $oUIAutomation = ObjCreateInterface($sCLSID_CUIAutomation, $sIID_IUIAutomation, $dtagIUIAutomation)

	Local $pDesktop, $oDesktop
	$oUIAutomation.GetRootElement($pDesktop)
	$oDesktop = ObjCreateInterface($pDesktop, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	Local $pCondition
	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, "ApplicationFrameWindow", $pCondition)

	Local $pCalc, $oCalc
	$oDesktop.FindFirst($TreeScope_Descendants, $pCondition, $pCalc)
	$oCalc = ObjCreateInterface($pCalc, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, 'Windows.UI.Core.CoreWindow', $pCondition)

	Local $pCalc1, $oCalc1
	$oCalc.FindFirst($TreeScope_Descendants, $pCondition, $pCalc1)
	$oCalc1 = ObjCreateInterface($pCalc1, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId, 'LandmarkTarget', $pCondition)

	Local $pGroup, $oGroup
	$oCalc1.FindFirst($TreeScope_Descendants, $pCondition, $pGroup)
	$oGroup = ObjCreateInterface($pGroup, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	$oUIAutomation.CreatePropertyCondition($UIA_AutomationIdPropertyId, 'CalculatorResults', $pCondition)

	Local $pGroup2, $oGroup2
	$oGroup.FindFirst($TreeScope_Descendants, $pCondition, $pGroup2)
	$oGroup2 = ObjCreateInterface($pGroup2, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

	Local $sName1
	$oGroup2.GetCurrentPropertyValue($UIA_NamePropertyId, $sName1)
	Return $sName1

;~ 	ConsoleWrite("$sName1 = " & $sName1 & @CRLF)

;~ 	$oUIAutomation.CreatePropertyCondition($UIA_AutomationIdPropertyId, 'TextContainer', $pCondition)
;~ 	$oUIAutomation.CreatePropertyCondition($UIA_ClassNamePropertyId,'ScrollViewer', $pCondition)

;~ 	Local $pTextContainer, $oTextContainer, $Value
;~ 	$oGroup2.FindFirst($TreeScope_Descendants, $pCondition, $pTextContainer)
;~ 	$oTextContainer = ObjCreateInterface($pTextContainer, $sIID_IUIAutomationElement, $dtagIUIAutomationElement)

;~ 	MsgBox("","",$oTextContainer.GetText())

;~ 	Local $pInvokePattern, $oInvokePattern
;~ 	$oTextContainer.GetCurrentPattern( $UIA_InvokePatternId, $pInvokePattern )
;~ 	$oInvokePattern = ObjCreateInterface( $pInvokePattern, $sIID_IUIAutomationInvokePattern, $dtagIUIAutomationInvokePattern )
;~ 	$oInvokePattern.Invoke()
;~ 	$oTextContainer.GetCurrentPropertyValue($UIA_NamePropertyId, $Value)

;~ 	Return $Value

EndFunc   ;==>GetResult

Run("calc")
Sleep(2000)
WinWaitActive("Calculadora", "", 5)
while not(WinGetState("Calculadora","")=15)
wend

Num("num1Button")
Num("num2Button")
Num("num3Button")
Num("num4Button")
Num("num5Button")
Num("num6Button")
Num("num7Button")
;~ Num("num8Button")
Num("num9Button")

Operators("multiplyButton")

Num("num9Button")

Operators('equalButton')

MsgBox("", "", GetResult())

WinClose("Calculadora", "")
