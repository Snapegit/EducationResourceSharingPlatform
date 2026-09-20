<template>
	<div>
		<div class="home_box">
			<!-- 教育资源首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">教育资源展示</div>
				<div class="home_list_one">
					<div class="home_item1 animation_box" v-if="jiaoyuziyuanHomeList.length>0" @click="detailClick('jiaoyuziyuan',jiaoyuziyuanHomeList[0].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(jiaoyuziyuanHomeList[0].tupian)" :src="jiaoyuziyuanHomeList[0].tupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="jiaoyuziyuanHomeList[0].tupian?$config.url + jiaoyuziyuanHomeList[0].tupian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{jiaoyuziyuanHomeList[0].jiaoyubiaoti}}
							</div>
						</div>
					</div>
					<div class="home_item2">
						<div class="item2_top animation_box" v-if="jiaoyuziyuanHomeList.length>1" @click="detailClick('jiaoyuziyuan',jiaoyuziyuanHomeList[1].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(jiaoyuziyuanHomeList[1].tupian)" :src="jiaoyuziyuanHomeList[1].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="jiaoyuziyuanHomeList[1].tupian?$config.url + jiaoyuziyuanHomeList[1].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{jiaoyuziyuanHomeList[1].jiaoyubiaoti}}
								</div>
							</div>
						</div>
						<div class="item2_bottom animation_box" v-if="jiaoyuziyuanHomeList.length>2" @click="detailClick('jiaoyuziyuan',jiaoyuziyuanHomeList[2].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(jiaoyuziyuanHomeList[2].tupian)" :src="jiaoyuziyuanHomeList[2].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="jiaoyuziyuanHomeList[2].tupian?$config.url + jiaoyuziyuanHomeList[2].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{jiaoyuziyuanHomeList[2].jiaoyubiaoti}}
								</div>
							</div>
						</div>
					</div>
					<div class="home_item3 animation_box" v-if="jiaoyuziyuanHomeList.length>3" @click="detailClick('jiaoyuziyuan',jiaoyuziyuanHomeList[3].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(jiaoyuziyuanHomeList[3].tupian)" :src="jiaoyuziyuanHomeList[3].tupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="jiaoyuziyuanHomeList[3].tupian?$config.url + jiaoyuziyuanHomeList[3].tupian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{jiaoyuziyuanHomeList[3].jiaoyubiaoti}}
							</div>
						</div>
					</div>
					<div class="home_item4">
						<div class="item4_top animation_box" v-if="jiaoyuziyuanHomeList.length>4" @click="detailClick('jiaoyuziyuan',jiaoyuziyuanHomeList[4].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(jiaoyuziyuanHomeList[4].tupian)" :src="jiaoyuziyuanHomeList[4].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="jiaoyuziyuanHomeList[4].tupian?$config.url + jiaoyuziyuanHomeList[4].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{jiaoyuziyuanHomeList[4].jiaoyubiaoti}}
								</div>
							</div>
						</div>
						<div class="item4_bottom animation_box" v-if="jiaoyuziyuanHomeList.length>5" @click="detailClick('jiaoyuziyuan',jiaoyuziyuanHomeList[5].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(jiaoyuziyuanHomeList[5].tupian)" :src="jiaoyuziyuanHomeList[5].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="jiaoyuziyuanHomeList[5].tupian?$config.url + jiaoyuziyuanHomeList[5].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{jiaoyuziyuanHomeList[5].jiaoyubiaoti}}
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="homeList_more_view" @click="moreClick('jiaoyuziyuan')">
					<span class="homeList_more_text">查看更多</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
			<!-- 在线教育首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">在线教育展示</div>
				<div class="home_list_one">
					<div class="home_item1 animation_box" v-if="zaixianjiaoyuHomeList.length>0" @click="detailClick('zaixianjiaoyu',zaixianjiaoyuHomeList[0].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(zaixianjiaoyuHomeList[0].tupian)" :src="zaixianjiaoyuHomeList[0].tupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="zaixianjiaoyuHomeList[0].tupian?$config.url + zaixianjiaoyuHomeList[0].tupian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{zaixianjiaoyuHomeList[0].biaoti}}
							</div>
						</div>
					</div>
					<div class="home_item2">
						<div class="item2_top animation_box" v-if="zaixianjiaoyuHomeList.length>1" @click="detailClick('zaixianjiaoyu',zaixianjiaoyuHomeList[1].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(zaixianjiaoyuHomeList[1].tupian)" :src="zaixianjiaoyuHomeList[1].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="zaixianjiaoyuHomeList[1].tupian?$config.url + zaixianjiaoyuHomeList[1].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{zaixianjiaoyuHomeList[1].biaoti}}
								</div>
							</div>
						</div>
						<div class="item2_bottom animation_box" v-if="zaixianjiaoyuHomeList.length>2" @click="detailClick('zaixianjiaoyu',zaixianjiaoyuHomeList[2].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(zaixianjiaoyuHomeList[2].tupian)" :src="zaixianjiaoyuHomeList[2].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="zaixianjiaoyuHomeList[2].tupian?$config.url + zaixianjiaoyuHomeList[2].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{zaixianjiaoyuHomeList[2].biaoti}}
								</div>
							</div>
						</div>
					</div>
					<div class="home_item3 animation_box" v-if="zaixianjiaoyuHomeList.length>3" @click="detailClick('zaixianjiaoyu',zaixianjiaoyuHomeList[3].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(zaixianjiaoyuHomeList[3].tupian)" :src="zaixianjiaoyuHomeList[3].tupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="zaixianjiaoyuHomeList[3].tupian?$config.url + zaixianjiaoyuHomeList[3].tupian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{zaixianjiaoyuHomeList[3].biaoti}}
							</div>
						</div>
					</div>
					<div class="home_item4">
						<div class="item4_top animation_box" v-if="zaixianjiaoyuHomeList.length>4" @click="detailClick('zaixianjiaoyu',zaixianjiaoyuHomeList[4].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(zaixianjiaoyuHomeList[4].tupian)" :src="zaixianjiaoyuHomeList[4].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="zaixianjiaoyuHomeList[4].tupian?$config.url + zaixianjiaoyuHomeList[4].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{zaixianjiaoyuHomeList[4].biaoti}}
								</div>
							</div>
						</div>
						<div class="item4_bottom animation_box" v-if="zaixianjiaoyuHomeList.length>5" @click="detailClick('zaixianjiaoyu',zaixianjiaoyuHomeList[5].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(zaixianjiaoyuHomeList[5].tupian)" :src="zaixianjiaoyuHomeList[5].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="zaixianjiaoyuHomeList[5].tupian?$config.url + zaixianjiaoyuHomeList[5].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{zaixianjiaoyuHomeList[5].biaoti}}
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="homeList_more_view" @click="moreClick('zaixianjiaoyu')">
					<span class="homeList_more_text">查看更多</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
		</div>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//教育资源首页展示
	const jiaoyuziyuanHomeList = ref([])
	const getjiaoyuziyuanHomeList = () => {
		context?.$http({
			url: 'jiaoyuziyuan/list',
			method: 'get',
			params: {
				page: 1,
				limit: 6
			}
		}).then(res => {
			jiaoyuziyuanHomeList.value = res.data.data.list
		})
	}
	//在线教育首页展示
	const zaixianjiaoyuHomeList = ref([])
	const getzaixianjiaoyuHomeList = () => {
		context?.$http({
			url: 'zaixianjiaoyu/list',
			method: 'get',
			params: {
				page: 1,
				limit: 6
			}
		}).then(res => {
			zaixianjiaoyuHomeList.value = res.data.data.list
		})
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//教育资源首页展示
		getjiaoyuziyuanHomeList()
		//在线教育首页展示
		getzaixianjiaoyuHomeList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		padding: 0;
		margin: 0 auto;
		background: #eee;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 40px 7% 60px;
		margin: 0 auto;
		background: #eee;
		width: 100%;
		position: relative;
		order: 2;
		.recomList_title {
			padding: 0 0 20px;
			margin: 0px 0 0;
			color: #033561;
			font-weight: 500;
			width: auto;
			font-size: 30px;
			border-color: #2da065;
			border-width: 0 0 0px;
			border-style: solid;
			text-align: left;
		}
		// list
		.recommend_list_five {
			margin: 0 auto;
			flex-direction: row;
			display: flex;
			width: 100%;
			align-items: flex-start;
			.recommend_list_five_left {
				width: 75%;
				.item1 {
					cursor: pointer;
					display: flex;
					width: 100%;
					.recommend_img_box {
						width: 65%;
						font-size: 0;
						height: 320px;
						.recommend_img {
							object-fit: cover;
							width: 100%;
							height: 100%;
						}
					}
					.content {
						padding: 10px 20px;
						flex-direction: column;
						background: #fff;
						display: flex;
						width: 35%;
						line-height: 30px;
						justify-content: center;
						align-items: center;
						flex-wrap: wrap;
						text-align: center;
						height: 320px;
						.recommend_title1 {
							color: #000;
							font-weight: bold;
							width: 100%;
						}
						.recommend_title2 {
							color: #666;
							width: 100%;
						}
						.recommend_title3 {
							color: #666;
							width: 100%;
						}
						.recommend_title4 {
							color: #666;
							width: 100%;
						}
						.recommend_title5 {
							color: #666;
							width: 100%;
						}
						.recommend_price {
							color: #f00;
							width: 100%;
						}
						.recommend_five_bottom {
							display: flex;
							width: 100%;
							justify-content: center;
							align-items: center;
							.recommend_like {
								margin: 0 10px 0 0;
								color: #0266b5;
								display: flex;
								font-size: 16px;
								align-items: center;
								.like_icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.like_num {
									color: inherit;
								}
							}
							.recommend_collect {
								margin: 0 10px 0 0;
								color: #ee7810;
								display: flex;
								font-size: 16px;
								align-items: center;
								.el-icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.collect_num {
									color: inherit;
								}
							}
							.recommend_clickNum {
								margin: 0 10px 0 0;
								color: #4aac26;
								display: flex;
								font-size: 16px;
								align-items: center;
								.el-icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.clickNum_num {
									color: inherit;
								}
							}
						}
					}
				}
				.left_bottom {
					display: flex;
					width: 100%;
					align-items: flex-start;
					.item2 {
						cursor: pointer;
						width: 33%;
						.content {
							padding: 20px;
							flex-direction: column;
							background: #fff;
							display: flex;
							width: 100%;
							line-height: 24px;
							justify-content: center;
							align-items: center;
							flex-wrap: wrap;
							text-align: center;
							height: 280px;
							.recommend_title1 {
								color: #000;
								font-weight: bold;
								width: 100%;
							}
							.recommend_title2 {
								color: #666;
								width: 100%;
							}
							.recommend_title3 {
								color: #666;
								width: 100%;
							}
							.recommend_title4 {
								color: #666;
								width: 100%;
							}
							.recommend_title5 {
								color: #666;
								width: 100%;
							}
							.recommend_price {
								color: #f00;
								width: 100%;
							}
							.recommend_five_bottom {
								display: flex;
								width: 100%;
								justify-content: center;
								align-items: center;
								.recommend_like {
									margin: 0 10px 0 0;
									color: #0266b5;
									display: flex;
									font-size: 16px;
									align-items: center;
									.like_icon {
										margin: 0 4px 0 0;
										color: inherit;
									}
									.like_num {
										color: inherit;
									}
								}
								.recommend_collect {
									margin: 0 10px 0 0;
									color: #ee7810;
									display: flex;
									font-size: 16px;
									align-items: center;
									.el-icon {
										margin: 0 4px 0 0;
										color: inherit;
									}
									.collect_num {
										color: inherit;
									}
								}
								.recommend_clickNum {
									margin: 0 10px 0 0;
									color: #4aac26;
									display: flex;
									font-size: 16px;
									align-items: center;
									.el-icon {
										margin: 0 4px 0 0;
										color: inherit;
									}
									.clickNum_num {
										color: inherit;
									}
								}
							}
						}
						.recommend_img_box {
							width: 100%;
							font-size: 0;
							height: 400px;
							.recommend_img {
								object-fit: cover;
								width: 100%;
								height: 100%;
							}
						}
					}
					.item3 {
						cursor: pointer;
						width: 67%;
						.recommend_img_box {
							width: 100%;
							font-size: 0;
							height: 460px;
							.recommend_img {
								object-fit: cover;
								width: 100%;
								height: 100%;
							}
						}
						.content {
							padding: 20px;
							flex-direction: column;
							background: #fff;
							display: flex;
							width: 100%;
							line-height: 24px;
							justify-content: center;
							align-items: center;
							flex-wrap: wrap;
							text-align: center;
							height: 220px;
							.recommend_title1 {
								color: #000;
								font-weight: bold;
							}
							.recommend_title2 {
								color: #666;
							}
							.recommend_title3 {
								color: #666;
							}
							.recommend_title4 {
								color: #666;
							}
							.recommend_title5 {
								color: #666;
							}
							.recommend_price {
								color: #f00;
							}
							.recommend_five_bottom {
								display: flex;
								justify-content: center;
								align-items: center;
								.recommend_like {
									margin: 0 10px 0 0;
									color: #0266b5;
									display: flex;
									font-size: 16px;
									align-items: center;
									.like_icon {
										margin: 0 4px 0 0;
										color: inherit;
									}
									.like_num {
										color: inherit;
									}
								}
								.recommend_collect {
									margin: 0 10px 0 0;
									color: #ee7810;
									display: flex;
									font-size: 16px;
									align-items: center;
									.el-icon {
										margin: 0 4px 0 0;
										color: inherit;
									}
									.collect_num {
										color: inherit;
									}
								}
								.recommend_clickNum {
									margin: 0 10px 0 0;
									color: #4aac26;
									display: flex;
									font-size: 16px;
									align-items: center;
									.el-icon {
										margin: 0 4px 0 0;
										color: inherit;
									}
									.clickNum_num {
										color: inherit;
									}
								}
							}
						}
					}
				}
			}
			.recommend_list_five_right {
				width: 25%;
				.item4 {
					cursor: pointer;
					width: 100%;
					.recommend_img_box {
						width: 100%;
						font-size: 0;
						height: 320px;
						.recommend_img {
							object-fit: cover;
							width: 100%;
							height: 100%;
						}
					}
					.content {
						padding: 20px;
						flex-direction: column;
						background: #fff;
						display: flex;
						width: 100%;
						line-height: 24px;
						justify-content: center;
						align-items: center;
						flex-wrap: wrap;
						text-align: center;
						height: 280px;
						.recommend_title1 {
							color: #000;
							font-weight: bold;
						}
						.recommend_title2 {
							color: #666;
						}
						.recommend_title3 {
							color: #666;
						}
						.recommend_title4 {
							color: #666;
						}
						.recommend_title5 {
							color: #666;
						}
						.recommend_price {
							color: #f00;
						}
						.recommend_five_bottom {
							display: flex;
							justify-content: center;
							align-items: center;
							.recommend_like {
								margin: 0 10px 0 0;
								color: #0266b5;
								display: flex;
								font-size: 16px;
								align-items: center;
								.like_icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.like_num {
									color: inherit;
								}
							}
							.recommend_collect {
								margin: 0 10px 0 0;
								color: #ee7810;
								display: flex;
								font-size: 16px;
								align-items: center;
								.el-icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.collect_num {
									color: inherit;
								}
							}
							.recommend_clickNum {
								margin: 0 10px 0 0;
								color: #4aac26;
								display: flex;
								font-size: 16px;
								align-items: center;
								.el-icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.clickNum_num {
									color: inherit;
								}
							}
						}
					}
				}
				.five_more_view {
					cursor: pointer;
					color: #fff;
					background: #002648;
					display: flex;
					width: 100%;
					justify-content: center;
					align-items: center;
					flex-wrap: wrap;
					text-align: center;
					height: 400px;
					.five_more_text {
						border: 1px solid #fff;
						padding: 8px 30px;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(0.95) skew(0deg, 0deg) translate3d(0px, -3px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 40px 7% 0px;
		margin: 0 auto;
		background: #fff;
		width: 100%;
		position: relative;
		order: 3;
		height: auto;

		.newsList_title {
			padding: 0 0 8px;
			margin: 0 auto 20px;
			color: #033561;
			background: none;
			font-weight: 500;
			width: auto;
			font-size: 30px;
			border-color: #999;
			border-width: 0 0 0px;
			border-style: dashed;
			text-align: left;
		}
		// list
		.news_list_one {
			padding: 20px 10px 10px;
			margin: 20px 0 0;
			background: none;
			display: flex;
			width: 100%;
			justify-content: space-between;
			flex-wrap: wrap;
			.news_item {
				cursor: pointer;
				padding: 0 0 20px;
				margin: 0 20px 40px 0;
				background: #fff;
				display: flex;
				width: calc(32% - 20px);
				align-items: center;
				border-bottom: 1px solid rgba(0, 38, 72, .3);
				.news_img_box {
					overflow: hidden;
					width: 210px;
					height: 130px;
					.news_img {
						border: 0px solid #eee;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.news_content {
					margin: 0 0 0 30px;
					display: flex;
					width: calc(100% - 240px);
					flex-wrap: wrap;
					.news_title {
						border: 1px solid #888;
						padding: 4px 10px;
						margin: 0 0 10px;
						overflow: hidden;
						color: #888;
						white-space: nowrap;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						text-overflow: ellipsis;
						text-align: left;
						order: 2;
					}
					.news_text {
						padding: 0 10px 0 0;
						margin: 0 0 10px;
						overflow: hidden;
						display: block;
						font-size: 14px;
						line-height: 24px;
						height: 48px;
						order: 3;
					}
					.news_time {
						color: #555;
						font-weight: 500;
						display: block;
						width: 100%;
						text-align: left;
						order: 4;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(0.96) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1.1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			border-radius: 0px;
			padding: 0px 0;
			margin: 20px auto;
			top: 26px;
			background: none;
			width: auto;
			line-height: 34px;
			position: absolute;
			right: 7%;
			text-align: center;
			.news_more_text {
				color: #666;
				display: inline-block;
				font-size: 16px;
			}
			.el-icon {
				color: #666;
				display: inline-block;
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 60px 7%;
		margin: 0px 0 0;
		background: #eee;
		width: 100%;
		position: relative;
		text-align: center;
		order: 0;

		.homeList_title {
			padding: 0px;
			margin: 0;
			color: #033561;
			background: none;
			font-weight: 500;
			width: 100%;
			font-size: 30px;
			border-color: #eee;
			border-width: 0px;
			border-style: solid;
			text-align: left;
		}
		// list
		.home_list_one {
			padding: 0;
			margin: 20px auto 0;
			color: #222;
			display: flex;
			width: 100%;
			font-size: 16px;
			align-items: flex-start;
			flex-wrap: wrap;
			.home_item1 {
				cursor: pointer;
				border: 0px solid #ddd;
				padding: 0;
				margin: 0 30px 30px 0;
				width: calc(34% - 30px);
				position: relative;
				.home_img_box {
					margin: 0 0 0px;
					width: 100%;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 320px;
					}
				}
				.home_content {
					border: 1px solid #ddd;
					padding: 20px;
					background: #fff;
					width: 100%;
					line-height: 30px;
					text-align: center;
					.home_title {
						color: inherit;
						font-size: inherit;
					}
				}
			}
			.home_item2 {
				margin: 0 0 30px;
				width: 66%;
				.item2_top {
					cursor: pointer;
					border: 0px solid #ddd;
					padding: 0;
					margin: 0px;
					width: calc(50% - 20px);
					position: relative;
					float: left;
					.home_img_box {
						margin: 0 0 0px;
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 320px;
						}
					}
					.home_content {
						border: 1px solid #ddd;
						padding: 20px;
						background: #fff;
						width: 100%;
						line-height: 30px;
						text-align: center;
						.home_title {
							color: inherit;
							font-size: inherit;
						}
					}
				}
				.item2_bottom {
					cursor: pointer;
					border: 0px solid #ddd;
					padding: 0;
					width: calc(50% - 10px);
					position: relative;
					float: right;
					.home_img_box {
						margin: 0 0 0px;
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 320px;
						}
					}
					.home_content {
						border: 1px solid #ddd;
						padding: 20px;
						background: #fff;
						width: 100%;
						line-height: 30px;
						text-align: center;
						.home_title {
							color: inherit;
							font-size: inherit;
						}
					}
				}
			}
			.home_item3 {
				cursor: pointer;
				border: 0px solid #ddd;
				padding: 0;
				margin: 0 30px 0 0;
				display: block;
				width: calc(34% - 30px);
				position: relative;
				.home_img_box {
					width: 100%;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 320px;
					}
				}
				.home_content {
					border: 1px solid #ddd;
					padding: 20px;
					background: #fff;
					width: 100%;
					line-height: 30px;
					text-align: center;
					.home_title {
						color: inherit;
						font-size: inherit;
					}
				}
			}
			.home_item4 {
				margin: 0 0 0 0;
				display: block;
				width: 66%;
				.item4_top {
					cursor: pointer;
					border: 0px solid #ddd;
					padding: 0;
					margin: 0;
					width: calc(50% - 20px);
					position: relative;
					float: left;
					.home_img_box {
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 320px;
						}
					}
					.home_content {
						border: 1px solid #ddd;
						padding: 20px;
						background: #fff;
						width: 100%;
						line-height: 30px;
						text-align: center;
						.home_title {
							color: inherit;
							font-size: inherit;
						}
					}
				}
				.item4_bottom {
					cursor: pointer;
					border: 0px solid #ddd;
					padding: 0;
					width: calc(50% - 10px);
					position: relative;
					float: right;
					.home_img_box {
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 320px;
						}
					}
					.home_content {
						border: 1px solid #ddd;
						padding: 20px;
						background: #fff;
						width: 100%;
						line-height: 30px;
						text-align: center;
						.home_title {
							color: inherit;
							font-size: inherit;
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(3deg) scale(0.96) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.homeList_more_view {
			cursor: pointer;
			padding: 0;
			margin: 0 auto;
			top: 70px;
			background: none;
			display: inline-block;
			width: auto;
			position: absolute;
			right: 7%;
			text-align: center;
			.homeList_more_text {
				padding: 0px;
				color: #666;
				display: inline-block;
				font-size: 16px;
			}
			.el-icon {
				color: #666;
				display: inline-block;
			}
		}
	}
	// 首页展示
</style>