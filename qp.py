# 选择人员
def check(img):
    while True:
        checkBtn = pyautogui.locateOnScreen(img)
        print(checkBtn)
        if checkBtn is not None:
            pyautogui.click(checkBtn.left + checkBtn.width/2, checkBtn.top+checkBtn.height/2)
            break
        time.sleep(0.001)

# 添加其他人，不需要循环查找，节省时间
def checkOther(img):
    checkOtherBtn = pyautogui.locateOnScreen(img)
    print(checkOtherBtn)
    if checkOtherBtn is not None:
        pyautogui.click(checkOtherBtn.left + checkOtherBtn.width/2, checkOtherBtn.top+checkOtherBtn.height/2)

# 提交订单
def submit(img):
    submitBtn = pyautogui.locateOnScreen(img)
    print(submitBtn)
    if submitBtn is not None:
        pyautogui.click(submitBtn.left + submitBtn.width/2, submitBtn.top+submitBtn.height/2)


buy('./img/damai1.png')
price('./img/780.png')
add('./img/add.png')
enter('./img/enter.png')
check('./img/check.png')
checkOther('./img/check1.png')
submit('./img/submit.png')

