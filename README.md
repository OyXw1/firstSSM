# firstSSM
SSM项目整合流程
1、	数据库准备
2、	打开pom.xml添加相关依赖包，如spring、mybatis等
3、	新建实体类 User.java
4、	（dao层）建接口UserMapper.java后腱UserMapper.xml实现接口
5、	service 层实现，建接口UserService.java 及实现类（注入UserMapper调用方法实现）
6、	Spring 和 MyBatis 整合配置文件 mybatis-config.xml->typeAliases->mappers
7、	新建文件 applicationContext.xml该文件用来完成 Spring 和 MyBatis 的整合，主要包括了自动扫描，自动注入,配置数据库等context:component-scan->dataSource->sqlSessionFactory->MapperScannerConfigurer->txManager->tx:annotation-driven
8、	新建日志文件 log4j.properties
9、	建一个 Controller 类 UserController.java,注入UserService->利用service调用dao层，其中还用到Model , HttpSession ，HttpServletRequest
10、	JSP 页面的设计${sessionScope.message}
11、	新建 Spring MVC 配置文件 spring-mvc.xm， mvn:default-servlet-handler->context:component-scan->mvc:annotation-driven->viewResolver
12、	配置 web.xml 文件, Spring 核心监听器(ContextLoaderListener)-> 指定 Spring 的配置文件context-param(applicationContext.xml)-> Spring MVC 前端控制器servlet(DispatcherServlet->init-param/spring-mvc.xml)-> IntrospectorCleanupListener->编码过滤器CharacterEncodingFilter->设置欢迎页
