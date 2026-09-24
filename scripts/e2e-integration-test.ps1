& dist\similarity\bin\similarity.bat muse1.txt muse2.txt 3 > e2e-output.txt
if (-not (Select-String -Path e2e-output.txt -Pattern '^Similarity:0\.9000325774286236$' -Quiet)) {
    Write-Error "Unexpected similarity output"
    exit 1
}
