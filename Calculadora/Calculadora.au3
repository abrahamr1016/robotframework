Calculadora ()

Func Calculadora()
   ; Abre el ejecutable del aplicativo.
   Local  $iPID = Run("calc.exe", "")
   Local  $iCalc = WinWait("[CLASS:CalcFrame]", "", 15)
   Sleep(3000)
   ControlClick($iCalc, "", "Button11")
   Sleep(3000)
   ControlClick($iCalc, "", "Button23")
   Sleep(3000)
   ControlClick($iCalc, "", "Button15")
   Sleep(3000)
   ControlClick($iCalc, "", "Button23")
   Sleep(3000)
   ControlClick($iCalc, "", "Button11")
   Sleep(3000)
   ControlClick($iCalc, "", "Button28")
   Sleep(3000)
   ControlClick($iCalc, "", "Button21")
   Sleep(3000)
   ControlClick($iCalc, "", "Button11")
   Sleep(3000)
   ControlClick($iCalc, "", "Button28")
   Sleep(3000)
   ControlClick($iCalc, "", "Button20")
   Sleep(3000)
   ControlClick($iCalc, "", "Button11")
   Sleep(3000)
   ControlClick($iCalc, "", "Button28")
   Sleep(3000)
   ControlClick($iCalc, "", "Button22")
   Sleep(3000)
   ControlClick($iCalc, "", "Button11")
   Sleep(3000)
   ControlClick($iCalc, "", "Button28")
   Sleep(3000)


   ProcessClose($iPID)
EndFunc
