package in.co.sunrays.proj4.test;

import in.co.sunrays.proj4.bean.SubjectBean;
import in.co.sunrays.proj4.bean.UserBean;
import in.co.sunrays.proj4.exception.ApplicationException;
import in.co.sunrays.proj4.model.SubjectModel;
import in.co.sunrays.proj4.model.UserModel;

public class SubjectTest {

	public static void main(String[] args) {
		
		testFindByName();
	}


public static void testFindByName(){
	

	
	SubjectModel model=new SubjectModel();
	
	String name="English";
	
try {
	SubjectBean bean=model.findByName(name);
	System.out.println(bean.getName());
	System.out.println(bean.getCourseName());
	System.out.println(bean.getDescription());
	
} catch (ApplicationException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	
	
			
	
}

}
