function Close-IcingaTCPConnection()
{
    param(
        [System.Net.Sockets.TcpClient]$Client = $null
    );

    if ($null -eq $Client) {
        return;
    }

    Write-IcingaDebugMessage -Message (
        [string]::Format(
            'Closing client connection for endpoint {0}',
            $Client.Client.RemoteEndPoint
        )
    );

    $Client.Close();
    $Client.Dispose();
    $Client = $null;
}
