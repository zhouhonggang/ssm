import com.javakc.ssm.user.service.UserService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class SsmJunitTest {

    @Autowired
    private UserService userService;

//    @Test
//    public void insert()
//    {
//        User entity = new User();
//        entity.setId(UUID.randomUUID().toString().replace("-", ""));
//        entity.setName("name2");
//        entity.setAge(22);
//        entity.setGender(2);
//        entity.setPhone("15001390312");
//        entity.setBirthday(new Date());
//        entity.setAddress("北京市海淀区2");
//
//        userService.create(entity);
//    }

//    @Test
//    public void insert()
//    {
//        User entity = new User();
//        entity.setId(UUID.randomUUID().toString().replace("-", ""));
//        entity.setName("name2");
//        entity.setAge(22);
//        entity.setGender(2);
//        entity.setPhone("15001390312");
//        entity.setBirthday(new Date());
//        entity.setAddress("北京市海淀区2");
//
//        userService.insert(entity);
//    }

//    @Test
//    public void update()
//    {
//        User entity = new User();
//        entity.setId("64812eaff2c749d7af99dabf0b11bd47");
//        entity.setName("name2");
//        entity.setAge(22);
//        entity.setGender(2);
//        entity.setPhone("15001390312");
//        entity.setBirthday(new Date());
//        entity.setAddress("北京市海淀区2");
//
//        userService.update(entity);
//    }

//    @Test
//    public void delete()
//    {
//        userService.delete("64812eaff2c749d7af99dabf0b11bd47");
//    }

//    @Test
//    public void queryAll()
//    {
//        List<User> list = userService.queryAll();
//        list.forEach(user ->{
//            System.out.println( user );
//        });
//    }

//    @Test
//    public void queryByCount()
//    {
//        long count = userService.queryByCount();
//        System.out.println( count );
//    }

//    @Test
//    public void queryById()
//    {
//        User user = userService.queryById("bd396ff51c6249cc924245226c5c2d8c");
//        System.out.println( user );
//    }

}
