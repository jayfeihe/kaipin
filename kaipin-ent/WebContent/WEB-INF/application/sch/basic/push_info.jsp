﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<!--上传宣讲会历史 封面和视频-->
	<script type="text/javascript" src="${STATIC_SCH }/js/image/upHistory.js?v.<%=System.currentTimeMillis()%>"></script>
			
		<!--发布宣讲会 和 发布以往视频 开始-->
			<div class="preacp-and-oldvideo" id="pushAllXjh">
				<!-- 1正在上传0未上传 -->
				<input type="hidden" id="pushHistoryIng" value="0">
				<a href="javascript:void(0)" class="close-xx" id="close-meetings"></a>
				<ul class="change-panel" id="change-meetings">
				<li class="bd-null bgColor-active" style="display:;"><a href="javascript:void(0)" >发布点播视频</li>
                <li style="display:;"><a  href=" javascript:void(0)"="" id="pushSchVedio">发布直播预告</a></li>
				

					
				</ul>

				<div class="meeting-detaiils" id="change-meeting-detaiils">
				<!--发布以往视频  开始-->
					<div class="send-preacp-meet meetings  send-old-videos" style="display: ;" >
						<form method="post" name="historyForm" id="historyForm" action="<%=path%>/entMeetingNoticeController/add.do">
						
							<div class="spm-cons-details">
								
								<div class="spm-img-info spm-videos-info">
									<div>
										<span class="spm-tips fl">上传视频 </span>
										<div class="help-lists fl">
											<a href="javascript:void(0)"  class="help-icon"></a>
											
											<div class="help-details">
												<span class="inverted-triangle"></span>
												<p>支持视频格式:mp4</p>
											</div>
										</div>
										<i class="small-tips">视频不能超过2G</i>
									</div>
									<div class="spm-videos">
										<a href="javascript:void(0)" id="upHistoryVedioTrriger">选择文件</a>
									</div>
									<input type="hidden" id="upHistoryVedioUrl" name="xjhAnnexId"/>
									
						<!-- 上传ing -->
						<div id="upHistoryVedio"></div>	
						
						<!-- 上传成功 开始 -->
						<div class="uploadVedioSuccess" id="uploadVedioSuccess">
							<div class="uvs-tile fl">
								<a href="javascript:" class="uvs-bt">
									<span class="uvs-icon"></span>
								</a>
							</div>
							
							<div class="uvs-infos fl">
								<p class="info-title">
									<span class="name">文件名:</span>
									<span class="tlt" title="文件名" id="fileName">文件名</span>
									<a href="javascript:" class="again" title="重新上传" id="upLoadAgain">重新上传</a>
								</p>
								<p class="info-tips">文件上传成功</p>
							</div>
						</div>
						<!-- 上传成功 结束 -->
						
						
						<!-- 上传失败 开始 -->
						<div class="uploadVedioSuccess uploadVediofail" id="uploadVediofail">
							<div class="uvs-tile fl">
								<a href="javascript:" class="uvs-bt">
									<span class="uvs-icon"></span>
								</a>
							</div>
							
							<div class="uvs-infos fl">
								<p class="info-title">
									<span class="name">文件名:</span>
									<span class="tlt" title="xx222xxx.mp4">xx222xxx.mp4</span>
									<a href="javascript:" class="again" title="重新上传">重新上传</a>
								</p>
								<p class="info-tips">文件上传失败，请重新上传</p>
							</div>
						</div>
						<!-- 上传失败 结束-->
								</div>
								<div class="spm-img-info">
									<span class="spm-tips">设置封面图<i>图片大小限制1 MB以内</i></span>
									<div class="img-see" id="historyImg">
										<a href="javascript:void(0)" class="updata-img-btn">
											<img src="${STATIC_SCH }/images/list-img.jpg" width="80" height="80"/>
										</a>
										<a href="javascript:void(0)" class="delete-imgCover"></a>
									</div>
									<div class="upload-img">
										<div class="imgCover upCoverImg-btn fl" style="border:1px solid #E8E8E8;" id="uploadhistoryImgUrlTrigger">
											<a href="javascript:void(0)" class="upCoverImgBtn"></a>
										</div>
									</div>
									
									<div id="upHistoryImg" style="display:none;"></div>
									<input name="coverImagePath" style="display:none;" id="historyImgUrl" />
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</div>
							
							<input type="reset" value="重置" style="display:none;" id="historyFormReset"/>
							<div class="spm-cons-details">
								<input type="text" style="display:none;" value="3" name="type" />
								<div class="spm-style-set">
									<span class="spm-tips">点播视频名称</span>
									<input type="text" id="history-subject" name="subject" class="spm-input  mgr-null">
								</div>
								
								
							</div>
							<div class="spm-style-set remark">
								<span class="spm-tips">视频介绍</span>
								<textarea id="history-memo" name="memo"></textarea>
							</div>
							<div class="clear"></div>
							<div class="spm-cons-details">
								<div class="spm-style-set">
									<span class="spm-tips">拍摄时间</span>
									<input type="text" style="display:none;" name="stratTimeStr" id="history-startTime"/>
									<ul id="start_time_history" class="mod_select">
											<li>
												<div class="select_box">
													<span class="select_txt startYear">2016年</span><span class="selet_open"></span>
													<div class="option">
														<a href="javascript:void(0)">2015年</a>
														<a href="javascript:void(0)">2016年</a>
														<a href="javascript:void(0)">2017年</a>
														<a href="javascript:void(0)">2018年</a>
														<a href="javascript:void(0)">2019年</a>
														<a href="javascript:void(0)">2020年</a>
														<a href="javascript:void(0)">2021年</a>
														<a href="javascript:void(0)">2022年</a>
														<a href="javascript:void(0)">2023年</a>
														<a href="javascript:void(0)">2024年</a>
														<a href="javascript:void(0)">2025年</a>
														<a href="javascript:void(0)">2026年</a>
														<a href="javascript:void(0)">2027年</a>
														<a href="javascript:void(0)">2028年</a>
														<a href="javascript:void(0)">2029年</a>
														<a href="javascript:void(0)">2030年</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other startMouth">8月</span><span class="selet_open"></span>
													<div class="option option-Wfixed" >
														<a href="javascript:void(0)">1月</a>
														<a href="javascript:void(0)">2月</a>
														<a href="javascript:void(0)">3月</a>
														<a href="javascript:void(0)">4月</a>
														<a href="javascript:void(0)">5月</a>
														<a href="javascript:void(0)">6月</a>
														<a href="javascript:void(0)">7月</a>
														<a href="javascript:void(0)">8月</a>
														<a href="javascript:void(0)">9月</a>
														<a href="javascript:void(0)">10月</a>
														<a href="javascript:void(0)">11月</a>
														<a href="javascript:void(0)">12月</a>
													</div>
												</div>
											</li>
											
											<li>
												<div class="select_box">
													<span class="select_txt select-other startData">30日</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">1日</a>
														<a href="javascript:void(0)">2日</a>
														<a href="javascript:void(0)">3日</a>
														<a href="javascript:void(0)">4日</a>
														<a href="javascript:void(0)">5日</a>
														<a href="javascript:void(0)">6日</a>
														<a href="javascript:void(0)">7日</a>
														<a href="javascript:void(0)">8日</a>
														<a href="javascript:void(0)">9日</a>
														<a href="javascript:void(0)">10日</a>
														<a href="javascript:void(0)">11日</a>
														<a href="javascript:void(0)">12日</a>
														<a href="javascript:void(0)">13日</a>
														<a href="javascript:void(0)">14日</a>
														<a href="javascript:void(0)">15日</a>
														<a href="javascript:void(0)">16日</a>
														<a href="javascript:void(0)">17日</a>
														<a href="javascript:void(0)">18日</a>
														<a href="javascript:void(0)">19日</a>
														<a href="javascript:void(0)">20日</a>
														<a href="javascript:void(0)">21日</a>
														<a href="javascript:void(0)">22日</a>
														<a href="javascript:void(0)">23日</a>
														<a href="javascript:void(0)">24日</a>
														<a href="javascript:void(0)">25日</a>
														<a href="javascript:void(0)">26日</a>
														<a href="javascript:void(0)">27日</a>
														<a href="javascript:void(0)">28日</a>
														<a href="javascript:void(0)">29日</a>
														<a href="javascript:void(0)">30日</a>
														<a href="javascript:void(0)">31日</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other startHour">12时</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">1时</a>
														<a href="javascript:void(0)">2时</a>
														<a href="javascript:void(0)">3时</a>
														<a href="javascript:void(0)">4时</a>
														<a href="javascript:void(0)">5时</a>
														<a href="javascript:void(0)">6时</a>
														<a href="javascript:void(0)">7时</a>
														<a href="javascript:void(0)">8时</a>
														<a href="javascript:void(0)">9时</a>
														<a href="javascript:void(0)">10时</a>
														<a href="javascript:void(0)">11时</a>
														<a href="javascript:void(0)">12时</a>
														<a href="javascript:void(0)">13时</a>
														<a href="javascript:void(0)">14时</a>
														<a href="javascript:void(0)">15时</a>
														<a href="javascript:void(0)">16时</a>
														<a href="javascript:void(0)">17时</a>
														<a href="javascript:void(0)">18时</a>
														<a href="javascript:void(0)">19时</a>
														<a href="javascript:void(0)">20时</a>
														<a href="javascript:void(0)">21时</a>
														<a href="javascript:void(0)">22时</a>
														<a href="javascript:void(0)">23时</a>
														<a href="javascript:void(0)">24时</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other startMinutes">0分</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">0分</a>
														<a href="javascript:void(0)">1分</a>
														<a href="javascript:void(0)">2分</a>
														<a href="javascript:void(0)">3分</a>
														<a href="javascript:void(0)">4分</a>
														<a href="javascript:void(0)">5分</a>
														<a href="javascript:void(0)">6分</a>
														<a href="javascript:void(0)">7分</a>
														<a href="javascript:void(0)">8分</a>
														<a href="javascript:void(0)">9分</a>
														<a href="javascript:void(0)">10分</a>
														<a href="javascript:void(0)">11分</a>
														<a href="javascript:void(0)">12分</a>
														<a href="javascript:void(0)">13分</a>
														<a href="javascript:void(0)">14分</a>
														<a href="javascript:void(0)">15分</a>
														<a href="javascript:void(0)">16分</a>
														<a href="javascript:void(0)">17分</a>
														<a href="javascript:void(0)">18分</a>
														<a href="javascript:void(0)">19分</a>
														<a href="javascript:void(0)">20分</a>
														<a href="javascript:void(0)">21分</a>
														<a href="javascript:void(0)">22分</a>
														<a href="javascript:void(0)">23分</a>
														<a href="javascript:void(0)">24分</a>
														<a href="javascript:void(0)">25分</a>
														<a href="javascript:void(0)">26分</a>
														<a href="javascript:void(0)">27分</a>
														<a href="javascript:void(0)">28分</a>
														<a href="javascript:void(0)">29分</a>
														<a href="javascript:void(0)">30分</a>
														<a href="javascript:void(0)">31分</a>
														<a href="javascript:void(0)">32分</a>
														<a href="javascript:void(0)">33分</a>
														<a href="javascript:void(0)">34分</a>
														<a href="javascript:void(0)">35分</a>
														<a href="javascript:void(0)">36分</a>
														<a href="javascript:void(0)">37分</a>
														<a href="javascript:void(0)">38分</a>
														<a href="javascript:void(0)">39分</a>
														<a href="javascript:void(0)">40分</a>
														<a href="javascript:void(0)">41分</a>
														<a href="javascript:void(0)">42分</a>
														<a href="javascript:void(0)">43分</a>
														<a href="javascript:void(0)">44分</a>
														<a href="javascript:void(0)">45分</a>
														<a href="javascript:void(0)">46分</a>
														<a href="javascript:void(0)">47分</a>
														<a href="javascript:void(0)">48分</a>
														<a href="javascript:void(0)">49分</a>
														<a href="javascript:void(0)">50分</a>
														<a href="javascript:void(0)">51分</a>
														<a href="javascript:void(0)">52分</a>
														<a href="javascript:void(0)">53分</a>
														<a href="javascript:void(0)">54分</a>
														<a href="javascript:void(0)">55分</a>
														<a href="javascript:void(0)">56分</a>
														<a href="javascript:void(0)">57分</a>
														<a href="javascript:void(0)">58分</a>
														<a href="javascript:void(0)">59分</a>
													</div>
												</div>
											</li>
										</ul>
								</div>
								<div class="clear"></div>
							</div>
							
							<!-- 上传历史宣讲会封面图片 -->
							
							
							
							
							<div class="submit-box">
								<a href="javascript:void(0)" id="historyVedio">发布 </a>
							</div>
						</form>	
						
					</div>
					<!--发布以往视频 结束-->
					<!--发布直播 开始-->
					<div class="send-preacp-meet meetings" style="display:none;">
						<form method="post" id="xjhForm" name="xjhForm">
							<input type="reset" id="xjhFormReset" style="display:none;"/>
							<input style="display:none;" id="xjhId" name="xjhId"/>
							<input type="hidden" id="stratTime" name="stratTimeStr"/>
							<input type="hidden" id="endTime" name="endTimeStr"/>
							<div class="spm-cons-details">
								<div class="spm-style-set">
									<span class="spm-tips" >公司名称</span>
									<span id="entNameXjhAdd">${info.schoolName }</span>
								</div>
								<div >
									<span class="spm-tips">直播预告名称</span><span id="themeNameTips"><span>
									<input type="text" class="spm-input mgr-null" id="subject" name="subject">
								</div>
							</div>
							<input type="text" style="display:none;" value="1" name="type" />
							<div class="spm-cons-details">
								<div class="spm-style-set" id="start_time_1">
									<span class="spm-tips">预计开始时间</span>
									<ul id="expected-start-time" class="mod_select">
											<li>
												<div class="select_box">
													<span class="select_txt startYear">2015年</span><span class="selet_open"></span>
													<div class="option year">
														<a href="javascript:void(0)">2015年</a>
														<a href="javascript:void(0)">2016年</a>
														<a href="javascript:void(0)">2017年</a>
														<a href="javascript:void(0)">2018年</a>
														<a href="javascript:void(0)">2019年</a>
														<a href="javascript:void(0)">2020年</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other startMouth">11月</span><span class="selet_open"></span>
													<div class="option option-Wfixed" >
														<a href="javascript:void(0)">1月</a>
														<a href="javascript:void(0)">2月</a>
														<a href="javascript:void(0)">3月</a>
														<a href="javascript:void(0)">4月</a>
														<a href="javascript:void(0)">5月</a>
														<a href="javascript:void(0)">6月</a>
														<a href="javascript:void(0)">7月</a>
														<a href="javascript:void(0)">8月</a>
														<a href="javascript:void(0)">9月</a>
														<a href="javascript:void(0)">10月</a>
														<a href="javascript:void(0)">11月</a>
														<a href="javascript:void(0)">12月</a>
													</div>
												</div>
											</li>
											
											<li>
												<div class="select_box">
													<span class="select_txt select-other startData">30日</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">1日</a>
														<a href="javascript:void(0)">2日</a>
														<a href="javascript:void(0)">3日</a>
														<a href="javascript:void(0)">4日</a>
														<a href="javascript:void(0)">5日</a>
														<a href="javascript:void(0)">6日</a>
														<a href="javascript:void(0)">7日</a>
														<a href="javascript:void(0)">8日</a>
														<a href="javascript:void(0)">9日</a>
														<a href="javascript:void(0)">10日</a>
														<a href="javascript:void(0)">11日</a>
														<a href="javascript:void(0)">12日</a>
														<a href="javascript:void(0)">13日</a>
														<a href="javascript:void(0)">14日</a>
														<a href="javascript:void(0)">15日</a>
														<a href="javascript:void(0)">16日</a>
														<a href="javascript:void(0)">17日</a>
														<a href="javascript:void(0)">18日</a>
														<a href="javascript:void(0)">19日</a>
														<a href="javascript:void(0)">20日</a>
														<a href="javascript:void(0)">21日</a>
														<a href="javascript:void(0)">22日</a>
														<a href="javascript:void(0)">23日</a>
														<a href="javascript:void(0)">24日</a>
														<a href="javascript:void(0)">25日</a>
														<a href="javascript:void(0)">26日</a>
														<a href="javascript:void(0)">27日</a>
														<a href="javascript:void(0)">28日</a>
														<a href="javascript:void(0)">29日</a>
														<a href="javascript:void(0)">30日</a>
														<a href="javascript:void(0)">31日</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other startHour">12时</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">1时</a>
														<a href="javascript:void(0)">2时</a>
														<a href="javascript:void(0)">3时</a>
														<a href="javascript:void(0)">4时</a>
														<a href="javascript:void(0)">5时</a>
														<a href="javascript:void(0)">6时</a>
														<a href="javascript:void(0)">7时</a>
														<a href="javascript:void(0)">8时</a>
														<a href="javascript:void(0)">9时</a>
														<a href="javascript:void(0)">10时</a>
														<a href="javascript:void(0)">11时</a>
														<a href="javascript:void(0)">12时</a>
														<a href="javascript:void(0)">13时</a>
														<a href="javascript:void(0)">14时</a>
														<a href="javascript:void(0)">15时</a>
														<a href="javascript:void(0)">16时</a>
														<a href="javascript:void(0)">17时</a>
														<a href="javascript:void(0)">18时</a>
														<a href="javascript:void(0)">19时</a>
														<a href="javascript:void(0)">20时</a>
														<a href="javascript:void(0)">21时</a>
														<a href="javascript:void(0)">22时</a>
														<a href="javascript:void(0)">23时</a>
														<a href="javascript:void(0)">24时</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other startMinutes">11分</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">0分</a>
														<a href="javascript:void(0)">1分</a>
														<a href="javascript:void(0)">2分</a>
														<a href="javascript:void(0)">3分</a>
														<a href="javascript:void(0)">4分</a>
														<a href="javascript:void(0)">5分</a>
														<a href="javascript:void(0)">6分</a>
														<a href="javascript:void(0)">7分</a>
														<a href="javascript:void(0)">8分</a>
														<a href="javascript:void(0)">9分</a>
														<a href="javascript:void(0)">10分</a>
														<a href="javascript:void(0)">11分</a>
														<a href="javascript:void(0)">12分</a>
														<a href="javascript:void(0)">13分</a>
														<a href="javascript:void(0)">14分</a>
														<a href="javascript:void(0)">15分</a>
														<a href="javascript:void(0)">16分</a>
														<a href="javascript:void(0)">17分</a>
														<a href="javascript:void(0)">18分</a>
														<a href="javascript:void(0)">19分</a>
														<a href="javascript:void(0)">20分</a>
														<a href="javascript:void(0)">21分</a>
														<a href="javascript:void(0)">22分</a>
														<a href="javascript:void(0)">23分</a>
														<a href="javascript:void(0)">24分</a>
														<a href="javascript:void(0)">25分</a>
														<a href="javascript:void(0)">26分</a>
														<a href="javascript:void(0)">27分</a>
														<a href="javascript:void(0)">28分</a>
														<a href="javascript:void(0)">29分</a>
														<a href="javascript:void(0)">30分</a>
														<a href="javascript:void(0)">31分</a>
														<a href="javascript:void(0)">32分</a>
														<a href="javascript:void(0)">33分</a>
														<a href="javascript:void(0)">34分</a>
														<a href="javascript:void(0)">35分</a>
														<a href="javascript:void(0)">36分</a>
														<a href="javascript:void(0)">37分</a>
														<a href="javascript:void(0)">38分</a>
														<a href="javascript:void(0)">39分</a>
														<a href="javascript:void(0)">40分</a>
														<a href="javascript:void(0)">41分</a>
														<a href="javascript:void(0)">42分</a>
														<a href="javascript:void(0)">43分</a>
														<a href="javascript:void(0)">44分</a>
														<a href="javascript:void(0)">45分</a>
														<a href="javascript:void(0)">46分</a>
														<a href="javascript:void(0)">47分</a>
														<a href="javascript:void(0)">48分</a>
														<a href="javascript:void(0)">49分</a>
														<a href="javascript:void(0)">50分</a>
														<a href="javascript:void(0)">51分</a>
														<a href="javascript:void(0)">52分</a>
														<a href="javascript:void(0)">53分</a>
														<a href="javascript:void(0)">54分</a>
														<a href="javascript:void(0)">55分</a>
														<a href="javascript:void(0)">56分</a>
														<a href="javascript:void(0)">57分</a>
														<a href="javascript:void(0)">58分</a>
														<a href="javascript:void(0)">59分</a>
													</div>
												</div>
											</li>
										</ul>
								</div>
							</div>
							<div class="clear"></div>
							
							<div class="spm-cons-details">
								<div class="spm-style-set" id="end_time_1">
									<span class="spm-tips">预计结束时间</span>
									<ul id="basic-endTimer-select" class="mod_select end-timer">
											<li>
												<div class="select_box">
													<span class="select_txt endYear">2016年</span><span class="selet_open"></span>
													<div class="option">
														<a href="javascript:void(0)">2015年</a>
														<a href="javascript:void(0)">2016年</a>
														<a href="javascript:void(0)">2017年</a>
														<a href="javascript:void(0)">2018年</a>
														<a href="javascript:void(0)">2019年</a>
														<a href="javascript:void(0)">2020年</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other endMouth">8月</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">1月</a>
														<a href="javascript:void(0)">2月</a>
														<a href="javascript:void(0)">3月</a>
														<a href="javascript:void(0)">4月</a>
														<a href="javascript:void(0)">5月</a>
														<a href="javascript:void(0)">6月</a>
														<a href="javascript:void(0)">7月</a>
														<a href="javascript:void(0)">8月</a>
														<a href="javascript:void(0)">9月</a>
														<a href="javascript:void(0)">10月</a>
														<a href="javascript:void(0)">11月</a>
														<a href="javascript:void(0)">12月</a>
													</div>
												</div>
											</li>
											
											<li>
												<div class="select_box">
													<span class="select_txt select-other endData">30日</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">1日</a>
														<a href="javascript:void(0)">2日</a>
														<a href="javascript:void(0)">3日</a>
														<a href="javascript:void(0)">4日</a>
														<a href="javascript:void(0)">5日</a>
														<a href="javascript:void(0)">6日</a>
														<a href="javascript:void(0)">7日</a>
														<a href="javascript:void(0)">8日</a>
														<a href="javascript:void(0)">9日</a>
														<a href="javascript:void(0)">10日</a>
														<a href="javascript:void(0)">11日</a>
														<a href="javascript:void(0)">12日</a>
														<a href="javascript:void(0)">13日</a>
														<a href="javascript:void(0)">14日</a>
														<a href="javascript:void(0)">15日</a>
														<a href="javascript:void(0)">16日</a>
														<a href="javascript:void(0)">17日</a>
														<a href="javascript:void(0)">18日</a>
														<a href="javascript:void(0)">19日</a>
														<a href="javascript:void(0)">20日</a>
														<a href="javascript:void(0)">21日</a>
														<a href="javascript:void(0)">22日</a>
														<a href="javascript:void(0)">23日</a>
														<a href="javascript:void(0)">24日</a>
														<a href="javascript:void(0)">25日</a>
														<a href="javascript:void(0)">26日</a>
														<a href="javascript:void(0)">27日</a>
														<a href="javascript:void(0)">28日</a>
														<a href="javascript:void(0)">29日</a>
														<a href="javascript:void(0)">30日</a>
														<a href="javascript:void(0)">31日</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other endHour">12时</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">1时</a>
														<a href="javascript:void(0)">2时</a>
														<a href="javascript:void(0)">3时</a>
														<a href="javascript:void(0)">4时</a>
														<a href="javascript:void(0)">5时</a>
														<a href="javascript:void(0)">6时</a>
														<a href="javascript:void(0)">7时</a>
														<a href="javascript:void(0)">8时</a>
														<a href="javascript:void(0)">9时</a>
														<a href="javascript:void(0)">10时</a>
														<a href="javascript:void(0)">11时</a>
														<a href="javascript:void(0)">12时</a>
														<a href="javascript:void(0)">13时</a>
														<a href="javascript:void(0)">14时</a>
														<a href="javascript:void(0)">15时</a>
														<a href="javascript:void(0)">16时</a>
														<a href="javascript:void(0)">17时</a>
														<a href="javascript:void(0)">18时</a>
														<a href="javascript:void(0)">19时</a>
														<a href="javascript:void(0)">20时</a>
														<a href="javascript:void(0)">21时</a>
														<a href="javascript:void(0)">22时</a>
														<a href="javascript:void(0)">23时</a>
														<a href="javascript:void(0)">24时</a>
													</div>
												</div>
											</li>
											<li>
												<div class="select_box">
													<span class="select_txt select-other endMinutes">0分</span><span class="selet_open"></span>
													<div class="option option-Wfixed">
														<a href="javascript:void(0)">0分</a>
														<a href="javascript:void(0)">1分</a>
														<a href="javascript:void(0)">2分</a>
														<a href="javascript:void(0)">3分</a>
														<a href="javascript:void(0)">4分</a>
														<a href="javascript:void(0)">5分</a>
														<a href="javascript:void(0)">6分</a>
														<a href="javascript:void(0)">7分</a>
														<a href="javascript:void(0)">8分</a>
														<a href="javascript:void(0)">9分</a>
														<a href="javascript:void(0)">10分</a>
														<a href="javascript:void(0)">11分</a>
														<a href="javascript:void(0)">12分</a>
														<a href="javascript:void(0)">13分</a>
														<a href="javascript:void(0)">14分</a>
														<a href="javascript:void(0)">15分</a>
														<a href="javascript:void(0)">16分</a>
														<a href="javascript:void(0)">17分</a>
														<a href="javascript:void(0)">18分</a>
														<a href="javascript:void(0)">19分</a>
														<a href="javascript:void(0)">20分</a>
														<a href="javascript:void(0)">21分</a>
														<a href="javascript:void(0)">22分</a>
														<a href="javascript:void(0)">23分</a>
														<a href="javascript:void(0)">24分</a>
														<a href="javascript:void(0)">25分</a>
														<a href="javascript:void(0)">26分</a>
														<a href="javascript:void(0)">27分</a>
														<a href="javascript:void(0)">28分</a>
														<a href="javascript:void(0)">29分</a>
														<a href="javascript:void(0)">30分</a>
														<a href="javascript:void(0)">31分</a>
														<a href="javascript:void(0)">32分</a>
														<a href="javascript:void(0)">33分</a>
														<a href="javascript:void(0)">34分</a>
														<a href="javascript:void(0)">35分</a>
														<a href="javascript:void(0)">36分</a>
														<a href="javascript:void(0)">37分</a>
														<a href="javascript:void(0)">38分</a>
														<a href="javascript:void(0)">39分</a>
														<a href="javascript:void(0)">40分</a>
														<a href="javascript:void(0)">41分</a>
														<a href="javascript:void(0)">42分</a>
														<a href="javascript:void(0)">43分</a>
														<a href="javascript:void(0)">44分</a>
														<a href="javascript:void(0)">45分</a>
														<a href="javascript:void(0)">46分</a>
														<a href="javascript:void(0)">47分</a>
														<a href="javascript:void(0)">48分</a>
														<a href="javascript:void(0)">49分</a>
														<a href="javascript:void(0)">50分</a>
														<a href="javascript:void(0)">51分</a>
														<a href="javascript:void(0)">52分</a>
														<a href="javascript:void(0)">53分</a>
														<a href="javascript:void(0)">54分</a>
														<a href="javascript:void(0)">55分</a>
														<a href="javascript:void(0)">56分</a>
														<a href="javascript:void(0)">57分</a>
														<a href="javascript:void(0)">58分</a>
														<a href="javascript:void(0)">59分</a>
													</div>
												</div>
											</li>
										</ul>
								</div>
							</div>
							
						<!-- 上传宣讲会图片 -->
						<script type="text/javascript">
							
						</script>
							
							<div class="spm-style-set frontCover-img clear">
								<span class="spm-tips">设置封面图
									<i>图片大小限制1 MB以内</i>
								</span>
								<div class="upload-img">
									<div class="imgCover fl" id="xhjImg" style="display:none;">
										<a href="javascript:void(0)" id=""><img src="" width="78" height="78"></a>
										<a href="javascript:void(0)" class="delete-imgCover"></a>
									</div>
									<div class="imgCover upCoverImg-btn fl" id="uploadImgTrigger">
										<a href="javascript:void(0)" class="upCoverImgBtn"></a>
									</div>
									<div id="uploadImg" style="display:none;"></div>
										<input type="hidden" name="coverImagePath"  id="xjhAnnexId"/>
									<div class="clear"></div>
									<div class="clear"></div>
								</div>
							</div>
							
							<div class="spm-style-set remark">
								<span class="spm-tips">视频直播介绍</span>
								<textarea id="detailXjh" name="memo" placeholder="例如：本次会议宣讲会嘉宾有XXX先生、XXX先生，将会重点介绍今年的校招岗位需求"></textarea>
							</div>
							
							<div class="submit-box">
								<a href="javascript:void(0)" id="xjh">发布 </a>
							</div>
							
						</form>						
					</div>
					<!--发布宣讲会 结束-->
					
					
				</div>
			</div>
		<!--发布宣讲会 和 发布以往视频 结束-->
		
		
		<script type="text/javascript">
			$(function(){
				$("#pushSchVedio").trigger("click");
			});
		</script>