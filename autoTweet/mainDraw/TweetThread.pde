void tweetThread(){
  //WebElement 変数名 = driver.~; 省略可能
  
  driver.get("https://twitter.com");
  driver.findElement(By.linkText("ログイン")).click();
  delay(1000); //1秒くらい待機
  driver.switchTo().activeElement().sendKeys(TwiId);
  
  delay(500);
  WebElement login = driver.findElement(By.className("js-password-field"));
  login.sendKeys(TwiPass);
  
  delay(500);
  login.sendKeys(Keys.chord(Keys.ENTER));
  
  delay(2000);
  driver.findElement(By.className("DraftEditor-root")).click();
  
  delay(1000);
  driver.switchTo().activeElement().sendKeys(tweet);
  
  delay(3000);
  driver.switchTo().activeElement().sendKeys(Keys.chord(Keys.COMMAND, Keys.ENTER));
  
  delay(1000);
  dispose();
  
}

void dispose(){
  driver.quit();
  println("disposed.");
}
