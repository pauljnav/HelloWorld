# lets make the smallest Hellow World app
 
 Describe "Invoke-HelloWorld" {

  BeforeAll {
    $moduleName = (Split-Path $PSCommandPath -Leaf).Replace('.Tests.ps1', '.psm1')
    $modulePath = Resolve-Path "$PSScriptRoot\..\$moduleName"
    Import-Module $modulePath -Force
  }

  It "Checks module for expected values" {
    Invoke-HelloWorld | Should -Be -ExpectedValue "Hello World!"
    Invoke-HelloWorld -reply "foo bar" | Should -Be -ExpectedValue "foo bar"
  }
  
 }