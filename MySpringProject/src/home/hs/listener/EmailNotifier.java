package home.hs.listener;

import home.hs.event.EmailEvent;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;

public class EmailNotifier implements ApplicationListener{

    @Override
    public void onApplicationEvent(ApplicationEvent applicationEvent) {
        if(applicationEvent instanceof EmailEvent){
            EmailEvent ee = (EmailEvent) applicationEvent;
            System.out.println("需要发送邮件的接收地址 ："+ee.getAddress());
            System.out.println("需要发送的邮件的正文 ："+ee.getText());
        }else {
            System.out.println("容器本身的事件不做任何处理！"+applicationEvent);
        }
    }
}
