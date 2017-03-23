package com.niit.myobsessionbackend;

	import static org.junit.Assert.*;

	import org.junit.Assert;
	import org.junit.BeforeClass;
	import org.junit.Test;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.context.annotation.AnnotationConfigApplicationContext;

	
import com.niit.dao.ProductDAOImpl;
import com.niit.model.Product;

	public class ProductTestCase {

		@Autowired
		static AnnotationConfigApplicationContext context;
		
		@Autowired
		static Product product;
		@Autowired
		static ProductDAOImpl productDAOImpl;
		
		@BeforeClass
		public static void init()
		{
			context=new AnnotationConfigApplicationContext();
			context.scan("com");
			context.refresh();
			productDAOImpl=(ProductDAOImpl)context.getBean("productDAOImpl");
			product=(Product)context.getBean("product");
			System.out.println("Objects created successfully");
		
		}
		@Test
			public void createProductTestCase()
			{
				product.setProduct_id("p014");
				product.setName("Nail Paint");
				product.setBrand("Revlon");
				product.setDescription("this is a cosmetic product");
				product.setPrice(600);
				product.setSupplier_name("sup001");
				product.setCategory_name("category003");
				System.out.println("Create Product");
				boolean status=productDAOImpl.saveProduct(product);;
				Assert.assertEquals("create Product Test Case", true, status);
				
			}
			
/*			@Test
			public void updateProducttestCase()
			{
				product.setProduct_id("P013");
				product.setName("New Color Bloom");
				boolean status=productDAOImpl.updateProduct(product);
				Assert.assertEquals("Update Product Test Case", true, status);
			}
			@Test
			public void deleteProductTestCase()
			{
				product.setProduct_id("P004");
				Assert.assertEquals("Delete Product Test Case", true, productDAOImpl.deleteProduct(product.getProduct_id()));
			}
			
			@Test
			public void getProductTestCase()
			{
				Assert.assertEquals("get Product Test Case", null, productDAOImpl.getProductById(""));
			}
		
*/			

	}

