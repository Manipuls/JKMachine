package com.demo.util;

import com.mysql.jdbc.StringUtils;

public class aaa {
	
	public static void main(String[] args) {
		String aa = "<p><KG><KG><KG><KG><KG><KG><KG><KG><KG><KG><KG><KG>破碎清洗机是利用废塑料制品进行回收造粒的必备设备之一，本机可对废旧塑料破碎、清洗一次完成，可粉碎软、硬废旧塑料，破碎清洗机能把各种塑料(编织袋、农膜、手提袋、大棚布等)制品粉碎成小块、短丝，并在粉碎的同时清洗除去其中的尘土、杂质等，从而得到清洁的效果。破碎清洗机一机两用，既可破碎又可清洗，是塑料机械的理想必备设备。 <br/></p><ol class=' list-paddingleft-2' style='list-style-type: decimal;'><li><p>破碎：选择合适的破碎机（强制进料粉碎机），调整好刀和筛底的距离，以防碎片太多。</p></li><li><p>2.主洗：选用带搓洗和加热功能的设备（螺带主洗机），并且要保证洗涤的时间；选用合适的pet清洗机，保证洗掉所有的顽固污渍。</p></li><li><p>3.漂洗：最好采用带搓洗的漂洗设备（螺带漂洗机），将残留的污渍和清洗剂进一步去除；</p></li><li><p>4.脱水：最好是旋风脱水机，省电、脱水率高。 pet清洗设备主要有:输送带、破碎机、蒸锅、螺旋提升机、平行清洗机、双螺杆漂洗机、瓶片脱水机、料仓、电控柜等组成。PET清洗设备包括：塑料造粒机、塑料再生机、塑料颗粒机、塑料破碎清洗机、挤出机、pet瓶片清洗设备.</p></li><li><p><br/></p></li></ol>";

		String replaceAll = aa.replaceAll("<KG>", "&nbsp;");
		System.out.println(replaceAll);
	}

}
