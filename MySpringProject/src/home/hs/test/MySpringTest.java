package home.hs.test;

import home.hs.event.EmailEvent;
import home.hs.service.PersonService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MySpringTest {
    public static void main(String[] ags){
        ApplicationContext ctx = new ClassPathXmlApplicationContext("bean.xml");
        System.out.println(ctx);
        PersonService p = ctx.getBean("personService", PersonService.class);
//        p.info();
        System.out.println("-----------------------------------------------------------------");
        EmailEvent ee = new EmailEvent("hello","HHS910217@163.com","this is a test!");
        ctx.publishEvent(ee);
    }
}
