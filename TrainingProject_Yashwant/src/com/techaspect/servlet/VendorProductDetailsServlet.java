package com.techaspect.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.techaspect.entity.Product;


public class VendorProductDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		
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
		
		
		
		Product product =new Product();
		
		product.setDescp_content_1(descp_content_1);
		product.setDescp_content_2(descp_content_2);
		product.setDescp_content_3(descp_content_3);
		product.setDescp_content_4(descp_content_4);
		product.setDescp_content_5(descp_content_5);
		product.setDescp_content_6(descp_content_6);
		product.setDescp_content_7(descp_content_7);
		product.setDescp_content_8(descp_content_8);
		product.setDescp_content_9(descp_content_9);
		product.setDescp_content_10(descp_content_10);
		product.setDescp_title_1(descp_title_1);
		product.setDescp_title_2(descp_title_2);
		product.setDescp_title_3(descp_title_3);
		product.setDescp_title_4(descp_title_4);
		product.setDescp_title_5(descp_title_5);
		product.setDescp_title_6(descp_title_6);
		product.setDescp_title_7(descp_title_7);
		product.setDescp_title_8(descp_title_8);
		product.setDescp_title_9(descp_title_9);
		product.setDescp_title_10(descp_title_10);
		product.setSpec_3g(spec_3g);
		product.setSpec_audio_formats(spec_audio_formats);
		product.setSpec_audio_jack(spec_audio_jack);
		product.setSpec_battery_capacity(spec_battery_capacity);
		product.setSpec_battery_type(spec_battery_type);
		product.setSpec_bluetooth_support(spec_bluetooth_support);
		product.setSpec_bluetooth_version(spec_bluetooth_version);
		product.setSpec_browse_type(spec_browse_type);
		product.setSpec_calllog_memory(spec_calllog_memory);
		product.setSpec_color(spec_color);
		product.setSpec_depth(depth);
		product.setSpec_display_colors(displaycolors);
		product.setSpec_display_size(displaysize);
		product.setSpec_display_type(displaytype);
		product.setSpec_expandable_storage(expandablestorage);
		product.setSpec_flash(flash);
		product.setSpec_frame_rate(framerate);
		product.setSpec_full_hdrecording(fullhdrecording);
		product.setSpec_gprs(gprs);
		product.setSpec_hdrecording(hdrecording);
		product.setSpec_height(height);
		product.setSpec_important_apps(importantapps);
		product.setSpec_in_the_box(inthebox);
		product.setSpec_internal_storage(internalstorage);
		product.setSpec_internet_connectivity(internetconnectivity);
		product.setSpec_model_name(modelname);
		product.setSpec_model_number(modelnumber);
		product.setSpec_network_type(networktype);
		product.setSpec_nfc(nfc);
		product.setSpec_operating_frequency(operatingfrequency);
		product.setSpec_operating_system(operatingsystem);
		product.setSpec_other_features(otherfeatures);
		product.setSpec_phonebook(phonebook);
		product.setSpec_preinstalled_browser(preinstalledbrowsers);
		product.setSpec_primary_clockspeed(primaryclockspeed);
		product.setSpec_primarycamera(primarycamera);
		product.setSpec_primarycamera_available(primarycameraavailable);
		product.setSpec_primarycamera_features(primarycamerafeatures);
		product.setSpec_processor_core(processorcore);
		product.setSpec_processor_type(processortype);
		product.setSpec_ram(ram);
		product.setSpec_removable_battery(removablebattery);
		product.setSpec_resolution(resolution);
		product.setSpec_resolution_type(resolutiontype);
		product.setSpec_secondary_clockspeed(secondaryclockspeed);
		product.setSpec_secondarycamera(secondarycamera);
		product.setSpec_secondarycamera_available(secondarycameraavailable);
		product.setSpec_secondarycamera_features(secondarycamerafeatures);
		product.setSpec_sensors(sensors);
		product.setSpec_sim_size(simsize);
		product.setSpec_sim_type(simtype);
		product.setSpec_smart_phone(smartphone);
		product.setSpec_sms(sms);
		product.setSpec_supported_memorycardtype(smcard);
		product.setSpec_supported_networks(supportednetworks);
		product.setSpec_touch_screen(touchscreen);
		product.setSpec_usb_connectivity(usbconnectivity);
		product.setSpec_video_formats(videoformats);
		product.setSpec_video_recording(videorecording);
		product.setSpec_videorecording_resolution(videorecordingresolution);
		product.setSpec_warranty_summary(warranty);
		product.setSpec_weight(weight);
		product.setSpec_width(width);
		product.setSpec_wifi(wifi);
		product.setSpec_wifi_version(wifiversion);
		
		
	
	}//service method

}//VendorProductDetailsServlet class
