package home.hs.test;

import home.hs.bean.impl.Chinese;
import home.hs.bean.impl.SuperMan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PersonTest {
    public static void main(String[] ags){
        ApplicationContext ctx = new ClassPathXmlApplicationContext("bean.xml");
        System.out.println(ctx);
        Chinese chinese = ctx.getBean("chinese", Chinese.class);
        chinese.useAxe();
        SuperMan superMan = ctx.getBean("superMan", SuperMan.class);
        superMan.useAxe();
    }
}
