@echo off
REM Delete .terraform* files and directories
for /d %%d in (.terraform*) do (
    echo Deleting directory %%d
    rmdir /s /q "%%d"
)
for %%f in (.terraform*) do (
    if exist "%%f" (
        echo Deleting file %%f
        del /q "%%f"
    )
)

REM Delete terraform.tfstate* files
for %%f in (terraform.tfstate*) do (
    if exist "%%f" (
        echo Deleting file %%f
        del /q "%%f"s
    )
)
