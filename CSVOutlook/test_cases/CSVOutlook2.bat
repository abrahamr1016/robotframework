@echo off

set var1="OutlookCSV2"
cd %~dp0\..\test_cases

start robot --outputdir C:\Users\ARgbit\Documents\RobotF\CSVOutlook\reports_%var1%  %var1%.robot

