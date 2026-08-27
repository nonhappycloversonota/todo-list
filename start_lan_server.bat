@echo off
rem スケジュールアプリをLAN内に公開する簡易サーバーを起動する。
rem タスクスケジューラ（ログオン時自動起動）と、手動のダブルクリックの両方から使える。
cd /d "%~dp0"
start /min "ScheduleAppServer" python.exe -m http.server 8000 --bind 0.0.0.0
