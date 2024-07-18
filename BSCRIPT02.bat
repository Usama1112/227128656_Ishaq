@echo off
setlocal enabledelayedexpansion

:: Prompt the user to select a shape
echo Select a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
set /p shape=Enter the number of your choice (1, 2, or 3): 

if %shape%==1 (
    :: Circle
    set /p radius=Enter the radius of the circle: 
    set /a area=3.14*%radius%*%radius%
    echo The area of the circle is: %area%
) else if %shape%==2 (
    :: Triangle
    set /p a=Enter the length of side a: 
    set /p b=Enter the length of side b: 
    set /p c=Enter the length of side c: 
    set /a s=(%a%+%b%+%c%)/2
    set /a area=s*(s-%a%)*(s-%b%)*(s-%c%)
    set area=%area:~0,-1%.%area:~-1%   :: Convert the area to a floating-point number
    echo The area of the triangle is: %area%

    :: Determine the type of triangle
    if %a%==%b% if %b%==%c% (
        echo The triangle is equilateral.
    ) else if %a%==%b% if not %b%==%c% (
        echo The triangle is isosceles.
    ) else if not %a%==%b% if not %b%==%c% (
        echo The triangle is scalene.
    )
) else if %shape%==3 (
    :: Quadrilateral
    set /p length=Enter the length: 
    set /p width=Enter the width: 
    set /a area=%length%*%width%
    echo The area of the quadrilateral is: %area%

    :: Determine whether it is a square or rectangle
    if %length%==%width% (
        echo The quadrilateral is a square.
    ) else (
        echo The quadrilateral is a rectangle.
    )
) else (
    echo Invalid choice.
)

pause
