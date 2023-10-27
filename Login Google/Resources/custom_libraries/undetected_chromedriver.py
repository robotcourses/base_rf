# Importe apenas o módulo, não um nome local "uc"
import undetected_chromedriver.v2 as uc

def open_new_browser():
    # Use undetected_chromedriver.v2.Chrome ao invés de uc.Chrome
    driver = uc.Chrome()
    driver.get("https://www.example.com")

# Chame a função
open_new_browser()
