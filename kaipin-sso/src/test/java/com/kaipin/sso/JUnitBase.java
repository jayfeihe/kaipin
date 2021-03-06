package com.kaipin.sso;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(value=SpringJUnit4ClassRunner.class)
 
@ContextConfiguration(locations = { "classpath:application-context.xml", "classpath:redis-context.xml"})

public abstract class JUnitBase {

}
