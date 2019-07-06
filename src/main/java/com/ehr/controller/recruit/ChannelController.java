package com.ehr.controller.recruit;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.model.Channel;
import com.ehr.service.ChannelService;
import com.github.pagehelper.PageInfo;

/**
 * 发布渠道模块的控制器
 * @author WW
 *
 */
@Controller
@RequestMapping("/recruit/channel")
public class ChannelController {
	@Autowired
	ChannelService channelService;
	
	//发布渠道模块 主页面
	@RequestMapping
	public String channel() {
		return "recruit/channel/channelList";
	}
	//查询所有
	@RequestMapping("/channelList")
	public String channelList() {
		return "recruit/channel/channelList";
	}
	//新增一条数据
	@RequestMapping("/channelAdd")
	public String channelAdd() {
		return "recruit/channel/channelAdd";
	}
	//修改指定id的数据
	@RequestMapping("/channelUpdate")
	public String channelUpdate(Integer id,HttpServletRequest request) {
		Channel channel = channelService.selectById(id);
		request.setAttribute("id", id);
		request.setAttribute("name", channel.getName());
		request.setAttribute("addtime", channel.getAddtime());
		request.setAttribute("mark", channel.getMark());
		return "recruit/channel/channelUpdate";
	}
	
	//Ajax查询发布渠道ehr_channel表数据
	@RequestMapping("/channelListAjax")
	@ResponseBody
	public Map<String, Object> channelListAjax(){
		Map<String, Object> map = new HashMap<>();
		map.put("data", channelService.selectAll());
		//总条数
		map.put("size", channelService.selectAll().size());
		return map;
	}
	//Ajax修改一个新的数据
		@RequestMapping("/channelUpdateAjax")
		@ResponseBody
		public Map<String, Object> channelUpdateAjax(Integer id,String name,String addtime,String mark) throws ParseException{
			Channel channel = new Channel();
			channel.setId(id);
			channel.setName(name);
			channel.setAddtime(new SimpleDateFormat("yyyy-MM-dd").parse(addtime));
			channel.setMark(mark);
			channel.setLogictodelete(0);
			channelService.updateById(channel);
			Map<String, Object> map = new HashMap<>();
			map.put("msg", "OK");
			return map;
		}
	//Ajax添加一个新的数据  new SimpleDateFormat("yyyy-MM-dd").parse(initiatetime)
	@RequestMapping("/channelAddAjax")
	@ResponseBody
	public Map<String, Object> channelAddAjax(String name,String addtime,String mark) throws ParseException{
		Channel channel = new Channel();
		channel.setName(name);
		channel.setAddtime(new SimpleDateFormat("yyyy-MM-dd").parse(addtime));
		channel.setMark(mark);
		channel.setLogictodelete(1);
		channelService.insert(channel);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
		return map;
	}
	//Ajax删除一条数据的部分
	@RequestMapping("/channelDeleteAjax")
	@ResponseBody
	public Map<String, Object> channelDeleteAjax(Integer id){
		channelService.deleteById(id);
		Map<String, Object> map = new HashMap<>();
		map.put("msg","deleteOK");
		return map;
	}
	
	//Ajax 返回页码
	@RequestMapping("/channelListPage")
    @ResponseBody
    public Map<String,Object> companyListPage(Integer pageNum,Integer pageSize){
        System.err.println("----------------------------");
        System.err.println(pageNum);
        System.err.println(pageSize);
        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }
        PageInfo<Channel> list = channelService.pageList(pageNum,pageSize);
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",list);
        System.err.println("==================");
        System.err.println(map.toString());
        return map;
    }
}
