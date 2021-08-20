#include "CUIAutomation2.au3"

Example()

Func Example()

	Run( "Notepad" )
	Sleep( 1000 )

	Local $oUIAutomation = ObjCreateInterface( $sCLSID_CUIAutomation, $sIID_IUIAutomation, $dtagIUIAutomation )

	Local $pDesktop, $oDesktop
	$oUIAutomation.GetRootElement( $pDesktop )
	$oDesktop = ObjCreateInterface( $pDesktop, $sIID_IUIAutomationElement, $dtagIUIAutomationElement )

	Local $pCondition
	$oUIAutomation.CreatePropertyCondition( $UIA_ClassNamePropertyId, "Notepad", $pCondition )

	Local $pNotepad, $oNotepad
	$oDesktop.FindFirst( $TreeScope_Descendants, $pCondition, $pNotepad )
	$oNotepad = ObjCreateInterface( $pNotepad, $sIID_IUIAutomationElement, $dtagIUIAutomationElement )

	$oUIAutomation.CreatePropertyCondition( $UIA_AutomationIdPropertyId, "15", $pCondition )

	Local $pEdit, $oEdit
	$oNotepad.FindFirst( $TreeScope_Descendants, $pCondition, $pEdit )
	$oEdit = ObjCreateInterface( $pEdit, $sIID_IUIAutomationElement, $dtagIUIAutomationElement )

	Local $aArray[5]

    $aArray[0] = "Arquivo"
    $aArray[1] = "Editar"
    $aArray[2] = "Formatar"
    $aArray[3] = "Exibir"
    $aArray[4] = "Ajuda"

    Local $sString = ""

	For $vElement In $aArray

		Local $pValue, $oValue
		$oEdit.GetCurrentPattern( $UIA_ValuePatternId, $pValue )
		$oValue = ObjCreateInterface( $pValue, $sIID_IUIAutomationValuePattern, $dtagIUIAutomationValuePattern )
		$oValue.SetValue( $vElement & @CRLF )

		Local $pCondition1
		$oUIAutomation.CreatePropertyCondition( $UIA_ControlTypePropertyId, $UIA_MenuItemControlTypeId, $pCondition1 )

		Local $pCondition2
		$oUIAutomation.CreatePropertyCondition( $UIA_NamePropertyId, $vElement, $pCondition2 )

		$oUIAutomation.CreateAndCondition( $pCondition1, $pCondition2, $pCondition )

		Local $pFile, $oFile
		$oNotepad.FindFirst( $TreeScope_Descendants, $pCondition, $pFile )
		$oFile = ObjCreateInterface( $pFile, $sIID_IUIAutomationElement, $dtagIUIAutomationElement )

		Local $pInvoke, $oInvoke
		$oFile.GetCurrentPattern( $UIA_InvokePatternId, $pInvoke )
		$oInvoke = ObjCreateInterface( $pInvoke, $sIID_IUIAutomationInvokePattern, $dtagIUIAutomationInvokePattern )
		$oInvoke.Invoke()
		Sleep( 1000 )

    Next

EndFunc
