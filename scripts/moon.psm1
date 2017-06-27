# 
# .SYNOPSIS
#     Lunar decimal numeric system  
# 
# .DESCRIPTION
#     Lunar decimal numeric system a.k.a. Moon emojis uses moon symbols for representation of numbers
#
# .EXAMPLE
#     Using the script:
#     PS> . .\moon.ps1
#     PS> 0..9 | %{ "$_ = $($moons.$_)" }
#     0 = :full_moon:
#     1 = :waning_gibbous_moon:
#     2 = :last_quarter_moon:
#     3 = :waning_crescent_moon:
#     4 = :new_moon_with_face:
#     5 = :new_moon:
#     6 = :waxing_crescent_moon:
#     7 = :first_quarter_moon:
#     8 = :waxing_gibbous_moon:
#     9 = :full_moon_with_face:
# 
# .EXAMPLE
#    PS> 0..9 | %{ Write-host $moons.aligned.$_ "is a digit" $_ }
#    :full_moon:            is a digit 0
#    :waning_gibbous_moon:  is a digit 1
#    :last_quarter_moon:    is a digit 2
#    :waning_crescent_moon: is a digit 3
#    :new_moon_with_face:   is a digit 4
#    :new_moon:             is a digit 5
#    :waxing_crescent_moon: is a digit 6
#    :first_quarter_moon:   is a digit 7
#    :waxing_gibbous_moon:  is a digit 8
#    :full_moon_with_face:  is a digit 9
#
# .EXAMPLE
#    :last_quarter_moon: + :last_quarter_moon: = :new_moon_with_face:
#
# .EXAMPLE
#    First 12 digits of π
#    :waning_crescent_moon:.:waning_gibbous_moon::new_moon_with_face::waning_gibbous_moon::new_moon::full_moon_with_face::last_quarter_moon::waxing_crescent_moon:
#
# .INPUTS
#
# .OUTPUTS
#
# .NOTES
#     (c) :last_quarter_moon::full_moon::waning_gibbous_moon::first_quarter_moon: Andriy Melnyk
# 
# .LINK
#     https://github.com/TurboBasic/LunarDecimal
#
# 
# .ROLE
#
# .FUNCTIONALITY
#


#region initialize module

New-Variable _moons -Scope script -Force

    $script:_moons = @{
      0 = ':full_moon:'
      1 = ':waning_gibbous_moon:'
      2 = ':last_quarter_moon:'
      3 = ':waning_crescent_moon:'
      4 = ':new_moon_with_face:'
      5 = ':new_moon:'
      6 = ':waxing_crescent_moon:'
      7 = ':first_quarter_moon:'
      8 = ':waxing_gibbous_moon:'
      9 = ':full_moon_with_face:'
    }

    $script:maxLength = 0
    $script:minLength = 0

    $_moons[0..9] |  
        %{ $_.length } | 
        measure -max -min | 
        %{ $script:minLength = $_.minimum
           $script:maxLength = $_.maximum }
    Write-Verbose "Loaded!"

#endregion



Function Get-Moon {
    PARAM([PARAMETER( Mandatory, Position=0 )]
              [int]$n,
          [PARAMETER( Position=1 )]
              [string]$align='' 
    )
  
  if($n -in 0..9) {
    if($align.Length) { 
      $filler = $align.Substring(0,1) * ($script:maxLength - $_moons.$n.length) 
    } else {
      $filler = ''
    }
    $_moons.$n + $filler
  }
} 



Function Get-Lunar10 {

  #region parameters
    [OUTPUTTYPE([byte[]])]
    [CMDLETBINDING()] PARAM(
        [PARAMETER( Mandatory,
                    Position=0,
                    ValueFromPipeline )]
                [decimal[]] 
                $numbers,

        [PARAMETER( Position=1 )]
                [string] 
                $align='',

        [PARAMETER( Position=2 )]
                [string] 
                $delimiter = ''
    )
  #endregion

  #region body
    BEGIN {}

    PROCESS { 
      $numbers | %{
        $res = @()
        $sign = $null
        if($_ -lt 0) { $sign = '-' + $delimiter } 

        $_ | toDecimalDigits | 
          ?{ $_ -in 0..9 } | 
          %{ $res += Get-Moon $_ $align }

        [Array]::Reverse($res)
        [string]($sign + ($res -join $delimiter))
      }
    }

    END {}
  #endregion

}



Function ConvertTo-Lunar10 {

  #region parameters
    [OUTPUTTYPE([byte[]])]
    [CMDLETBINDING()] PARAM(
        [PARAMETER( Mandatory,
                    Position=0,
                    ValueFromPipeline )]
            [ALLOWEMPTYSTRING()]
                [string[]] 
                $strings,

        [PARAMETER( Position=1 )]
                [string] 
                $align='',

        [PARAMETER( Position=2 )]
                [string] 
                $delimiter = ''
    )
  #endregion


  #region body
    BEGIN {}

    PROCESS { 
      $re = [regex]':[-+]?\d+:'
      $callback = {
        Get-Lunar10 ([string]$args[0]).TrimStart(':').TrimEnd(':') -align $align -delimiter $delimiter
      }
      foreach($s in $strings) {
        $re.Replace($s, $callback)
      }
    }

    END {}
  #endregion

}

New-Alias -name gL10  Get-Lunar10 -Force
New-Alias -name c2L10 ConvertTo-Lunar10 -Force


Export-ModuleMember -Function Get-Moon, Get-Lunar10, ConvertTo-Lunar10 -Alias gL10, c2L10




#region non-exportable functions

Function Script:toDecimalDigits {

  #region parameters
    [OUTPUTTYPE([byte[]])]
    [CMDLETBINDING()] PARAM(
        [PARAMETER( Mandatory,
                    ValueFromPipeline )]
                [decimal[]] 
                $numbers
    )
  #endregion

  BEGIN {}

  PROCESS { 
    foreach ($n in $numbers) {
      $n = [Math]::Abs($n)
      Do {
        $n % 10
        $n = [Math]::Floor($n / 10)
      } While ($n)
    }
  }

  END {}

}

#endregion