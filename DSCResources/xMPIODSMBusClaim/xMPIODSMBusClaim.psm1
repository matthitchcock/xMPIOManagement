function Get-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $BusType
    )

    $returnValue = Get-DSMBusClaim -BusType $BusType
    $returnValue
}


function Set-TargetResource
{
    [CmdletBinding()]
    param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $BusType,

        [ValidateSet("Present","Absent")]
        [System.String]
        $Ensure
    )

    Set-DSMBusClaim -BusType $BusType -Ensure $Ensure


}


function Test-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $BusType,

        [ValidateSet("Present","Absent")]
        [System.String]
        $Ensure
    )


    $result = Test-DSMBusClaim -BusType $BusType -Ensure $Ensure
    
    $result
}


Export-ModuleMember -Function *-TargetResource

