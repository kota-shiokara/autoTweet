/* autoTweet Ver:0.1 */

//seleniumライブラリのインポート
import org.openqa.selenium.Keys;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;


WebDriver driver;

String TwiId = "@hoge";   //TwitterID
String TwiPass = "@huga";  //パスワード

String tweet = "test";  //ツイート内容を書いてください
String putDriver = "/piyo/hogehoge";  //ChromeDriverが置かれている場所を指定してください

void setup(){
  size(500,500);
  
  //driver setup
  System.setProperty("webdriver.chrome.driver", putDriver);
  driver = new ChromeDriver();
}

void draw(){
  background(0);  
  
  if(frameCount % frameRate == 1){
    thread("test"); //テスト用
    //thread("tweetThread"); //自動ツイート
  }
}

void test(){
  driver.get("https://github.com/kota-shiokara");
  delay(2000);
  dispose();
}
