clc
clear
time = input('Please enter the time in 24-hour format (HH:MM): ', 's');

%% Some important variables
flag_pm = 0;
flag_am = 0;
hours_24 = str2double(time(1:2)); % Extracting hours from input
minutes_Seconds = time(4:8);% Extracting minutes & Seconds from input

%% To determine AM or PM
if hours_24 >= 12
    flag_pm = 1;
else
    flag_am = 1;
end

%% Main code for conversion
if flag_am %% to convert to AM
    if hours_24 == 0 %% if time is 00
        hours_12 = 12;
    else
        hours_12 = hours_24;
    end
    time_conversion = [num2str(hours_12, '%02d') ':' minutes_Seconds ' AM'];
elseif flag_pm %% to convert to PM
    if hours_24 == 12 %% if time is 12
        hours_12 = 12;
    else
        hours_12 = hours_24 - 12;
    end
    time_conversion = [num2str(hours_12, '%02d') ':' minutes_Seconds ' PM'];
end

disp(['The time in 12-hour format is: ' time_conversion]);
