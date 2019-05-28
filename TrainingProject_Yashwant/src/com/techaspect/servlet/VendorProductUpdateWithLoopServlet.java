package com.techaspect.servlet;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.techaspect.dao.ProductUpdateDao;
import com.techaspect.entity.Vendor;

public class VendorProductUpdateWithLoopServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		int id1=(int)session.getAttribute("productid");
		
		
		
		String name = req.getParameter("name");
		int price = Integer.parseInt(req.getParameter("price"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		String description = req.getParameter("shortdescription");
		String category = req.getParameter("category");
		String subcategory = req.getParameter("subcategory");
		String descp_title_1 = req.getParameter("d1");
		String descp_content_1 = req.getParameter("dc1");
		String descp_title_2 = req.getParameter("d2");
		String descp_content_2 = req.getParameter("dc2");
		String descp_title_3 = req.getParameter("d3");
		String descp_content_3 = req.getParameter("dc3");
		String descp_title_4 = req.getParameter("d4");
		String descp_content_4 = req.getParameter("dc4");
		String descp_title_5 = req.getParameter("d5");
		String descp_content_5 = req.getParameter("dc5");
		String descp_title_6 = req.getParameter("d6");
		String descp_content_6 = req.getParameter("dc6");
		String descp_title_7 = req.getParameter("d7");
		String descp_content_7 = req.getParameter("dc7");
		String descp_title_8 = req.getParameter("d8");
		String descp_content_8 = req.getParameter("dc8");
		String descp_title_9 = req.getParameter("d9");
		String descp_content_9 = req.getParameter("dc9");
		String descp_title_10 = req.getParameter("d10");
		String descp_content_10 = req.getParameter("dc10");
		String inthebox = req.getParameter("box");
		String modelnumber = req.getParameter("mnum");
		String modelname = req.getParameter("mnam");
		String spec_color = req.getParameter("color");
		String spec_browse_type = req.getParameter("browser");
		String simtype = req.getParameter("simtype");
		String touchscreen = req.getParameter("touchscreen");
		String displaysize = req.getParameter("dsize");
		String resolution = req.getParameter("resolution");
		String resolutiontype = req.getParameter("resolutiontype");
		String displaytype = req.getParameter("displaytype");
		String displaycolors = req.getParameter("displaycolors");
		String operatingsystem = req.getParameter("os");
		String processortype = req.getParameter("processortype");
		String processorcore = req.getParameter("processorcore");
		String primaryclockspeed = req.getParameter("primaryclockspeed");
		String secondaryclockspeed = req.getParameter("secondaryclockspeed");
		String operatingfrequency = req.getParameter("operatingfrequency");
		String internalstorage = req.getParameter("internalstorage");
		String ram = req.getParameter("ram");
		String expandablestorage = req.getParameter("estorage");
		String smcard = req.getParameter("smcard");
		String spec_calllog_memory = req.getParameter("calllogmemory");
		String primarycameraavailable = req.getParameter("pcameraavailable");
		String primarycamera = req.getParameter("pcamera");
		String primarycamerafeatures = req.getParameter("pcamerafeatures");
		String secondarycameraavailable = req.getParameter("scameraavailable");
		String secondarycamera = req.getParameter("scamera");
		String secondarycamerafeatures = req.getParameter("scamerafeatures");	
		String flash = req.getParameter("flash");
		String hdrecording = req.getParameter("hdrecording");
		String fullhdrecording = req.getParameter("fullhdrecording");
		String videorecording = req.getParameter("videorecording");
		String videorecordingresolution = req.getParameter("videorecordingresolution");
		String framerate = req.getParameter("framerate");
		String phonebook = req.getParameter("phonebook");
		String networktype = req.getParameter("networktype");
		String supportednetworks = req.getParameter("supportednetworks");
		String internetconnectivity = req.getParameter("internetconnectivity");
		String spec_3g = req.getParameter("g3");
		String gprs = req.getParameter("gprs");
		String preinstalledbrowsers = req.getParameter("preinstalledbrowsers");
		String spec_bluetooth_support = req.getParameter("bluetoothsupport");
		String spec_bluetooth_version = req.getParameter("bluetoothversion");
		String wifi = req.getParameter("wifi");
		String wifiversion = req.getParameter("wifiversion");
		String nfc = req.getParameter("nfc");
		String usbconnectivity = req.getParameter("usbconnectivity");
		String spec_audio_jack = req.getParameter("audiojack");
		String smartphone = req.getParameter("smartphone");
		String simsize = req.getParameter("simsize");
		String removablebattery = req.getParameter("removablebattery");
		String sms = req.getParameter("sms");
		String sensors = req.getParameter("sensors");
		String otherfeatures = req.getParameter("otherfeatures");
		String importantapps = req.getParameter("importantapps");
		String spec_audio_formats = req.getParameter("audioformats");
		String videoformats = req.getParameter("videoformats");
		String spec_battery_capacity = req.getParameter("batterycapacity");
		String spec_battery_type = req.getParameter("batterytype");
		String width = req.getParameter("width");
		String height = req.getParameter("height");
		String depth = req.getParameter("depth");
		String weight = req.getParameter("weight");
		String warranty = req.getParameter("warranty");
		
		
		String sql1 = "UPDATE products_details SET product_name = '" + name + "', product_price =" + price
				+ ",product_quantity =" + quantity + ", product_description= '" + description + "', product_category= '" + category + "', product_subcategory= '" + subcategory 
				+ "', descp_1_title= '" + descp_title_1 + "', descp_2_title= '" + descp_title_2 + "', descp_3_title= '" + descp_title_3
				+ "', descp_4_title= '" + descp_title_4 + "', descp_5_title= '" + descp_title_5 + "', descp_6_title= '" + descp_title_6
				+ "', descp_7_title= '" + descp_title_7 + "', descp_8_title= '" + descp_title_8 + "', descp_9_title= '" + descp_title_9
				+ "', descp_10_title= '" + descp_title_10 + "', descp_1_content= '" + descp_content_1 + "', descp_2_content= '" + descp_content_2
				+ "', descp_3_content= '" + descp_content_3 + "', descp_4_content= '" + descp_content_4 + "', descp_5_content= '" + descp_content_5 
				+ "', descp_6_content= '" + descp_content_6 + "', descp_7_content= '" + descp_content_7 + "', descp_8_content= '" + descp_content_8
				+ "', descp_9_content= '" + descp_content_9 + "', descp_10_content= '" + descp_content_10 + "', spec_in_the_box= '" + inthebox 
				+ "', spec_model_number= '"+ modelnumber+"', spec_model_name= '"+ modelname+"', spec_color= '"+ spec_color+"', spec_browse_type= '"+spec_browse_type
				+"', spec_sim_type= '"+ simtype+"', spec_touch_screen= '"+ touchscreen+"', spec_display_size= '"+ displaysize +"', spec_resolution= '"+ resolution
				+"', spec_resolution_type= '"+ resolutiontype+"', spec_display_type= '"+ displaytype
				+"', spec_display_colors= '"+ displaycolors+"', spec_operating_system= '"+ operatingsystem+"', spec_processor_type= '"+ processortype+"', spec_processor_core= '"+ processorcore
				+"', spec_primary_clockspeed= '"+ primaryclockspeed+"', spec_operating_frequency= '"+ operatingfrequency +"', spec_internal_storage= '"+ internalstorage
				+"', spec_ram= '"+ram+"', spec_expandable_storage= '"+ expandablestorage+"', spec_supported_memorycardtype= '"+ smcard+"', spec_calllog_memory= '"+ spec_calllog_memory
				+"', spec_primarycamera_available= '"+ primarycameraavailable+"', spec_primarycamera= '"+ primarycamera+"', spec_primarycamera_features= '"+ primarycamerafeatures
				+"', spec_secondarycamera_available= '"+secondarycameraavailable+"', spec_secondarycamera= '"+ secondarycamera+"', spec_secondarycamera_features= '"+ secondarycamerafeatures
				+"', spec_flash= '"+ flash+"', spec_hdrecording= '"+hdrecording+"', spec_full_hdrecording= '"+fullhdrecording
				+"', spec_video_recording= '"+videorecording+"', spec_videorecording_resolution= '"+videorecordingresolution
				+"', spec_frame_rate= '"+framerate+"', spec_phonebook= '"+phonebook+"', spec_network_type= '"+networktype+"', spec_supported_networks= '"+supportednetworks
				+"', spec_internet_connectivity= '"+internetconnectivity+"', spec_3g= '"+spec_3g+"', spec_gprs= '"+gprs+"', spec_preinstalled_browser= '"+preinstalledbrowsers
				+"', spec_bluetooth_support= '"+spec_bluetooth_support+"', spec_bluetooth_version= '"+spec_bluetooth_version
				+"', spec_wifi= '"+wifi+"', spec_wifi_version= '"+wifiversion+"', spec_nfc= '"+nfc+"', spec_usb_connectivity= '"+usbconnectivity+"', spec_audio_jack= '"+spec_audio_jack
				+"', spec_smart_phone= '"+smartphone+"', spec_sim_size= '"+simsize+"', spec_removable_battery= '"+removablebattery
				+"', spec_sms= '"+sms+"', spec_sensors= '"+sensors+"', spec_other_features= '"+otherfeatures+"', spec_important_apps= '"+importantapps
				+"', spec_audio_formats= '"+spec_audio_formats+"', spec_video_formats= '"+videoformats+"', spec_battery_capacity= '"+spec_battery_capacity
				+"', spec_battery_type= '"+spec_battery_type+"', spec_width= '"+width+"', spec_height= '"+height+"', spec_depth= '"+depth+"', spec_weight= '"+weight
				+"', spec_warranty_summary= '"+warranty+"' ";
		
		Vendor vendor = (Vendor) session.getAttribute("VendorDATA");
		int vid = vendor.getId();
		
		String[] img = { "", "", "", "", "" };
		
		for (int i = 1; i <= 5; i++) {
			Part part = req.getPart("image" + i + "");
			if (part.getSize() != 0) {
				part.getHeader("content-disposition");
				for (String content : part.getHeader("content-disposition").split(";")) {
					if (content.trim().startsWith("filename")) {
						img[i - 1] = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
					}
				}
				
				img[i - 1] = "v" + vid + "1" + img[i - 1];
				sql1 = sql1 + ", product_image" + i + " = '" + img[i - 1] + "'";
				
				File file = new File(
						"D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + img[i - 1]);
				
				try (FileOutputStream fos = new FileOutputStream(file); InputStream is = part.getInputStream();) {
					

					int read = 0;
					final byte[] bytes = new byte[1024];

					while ((read = is.read(bytes)) != -1) {
						fos.write(bytes, 0, read);
					}
				} catch (FileNotFoundException fnfe) {
					fnfe.printStackTrace();
				}
			} // if
		} // for
		sql1 = sql1 + "WHERE product_id=" + id1 + " ";
		ProductUpdateDao productupdateDao = new ProductUpdateDao();
		boolean status = productupdateDao.productUpdate(sql1);
		if (status) {
			res.sendRedirect("ProductList");
		}
	}// service method
}// VendorProductUpdateWithLoopServlet class
