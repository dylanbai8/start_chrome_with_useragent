@echo off


::设置 UserAgent 和 默认网站（可选）
set user_agent=pan.baidu.com
set your_website=https://pan.okduang.com


title -- CHROME启动器 --
MODE con: COLS=53 lines=11
color 0a
echo.
echo.            ===== CHROME启动器 =====
tasklist | find /i "chrome.exe" 1>nul 2>nul && goto kill_chrome || goto start_chrome


:start_chrome
echo.
echo. 正在启动chrome浏览器！
echo. 当前UserAgent: %user_agent%
start chrome.exe --start-maximized --user-agent="%user_agent%" %your_website% 1>nul 2>nul
ping localhost -n 2 1>nul 2>nul
tasklist | find /i "chrome.exe" 1>nul 2>nul && goto run_success || goto run_fail


:kill_chrome
MODE con: COLS=53 lines=14
color 0a
echo.
echo.            ===== CHROME启动器 =====
echo.
echo. 注意:即将重启chrome浏览器！
echo. 按任意键继续 ...
pause 1>nul 2>nul
taskkill /im chrome.exe /f 1>nul 2>nul
ping localhost -n 2 1>nul 2>nul
tasklist | find /i "chrome.exe" 1>nul 2>nul && goto run_fail || goto start_chrome


:run_success
echo.
echo. 启动成功！
echo. 如需恢复默认重启chrome即可。
echo. 即将自动关闭此窗口。
ping localhost -n 10 1>nul 2>nul
exit


:run_fail
echo.
echo. 启动失败！
echo. 请检查chrome浏览器是否正确安装。
echo. 即将自动关闭此窗口。
ping localhost -n 20 1>nul 2>nul
exit



