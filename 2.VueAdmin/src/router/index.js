	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import examquestion from '@/views/exam/examquestion/list'
	import zaixianjiaoyu from '@/views/zaixianjiaoyu/list'
	import exampaper from '@/views/exampaper/list'
	import storeup from '@/views/storeup/list'
	import users from '@/views/users/list'
	import forum from '@/views/forum/list'
	import jiaoyuziyuan from '@/views/jiaoyuziyuan/list'
	import xuexijihua from '@/views/xuexijihua/list'
	import yonghu from '@/views/yonghu/list'
	import config from '@/views/config/list'
	import wanchengjihua from '@/views/wanchengjihua/list'
	import jiaoyufenlei from '@/views/jiaoyufenlei/list'
	import exampaperlist from '@/views/exam/exampaperlist/list'
	import examination from '@/views/exam/exampaperlist/examination'
	import examrecord from '@/views/exam/examrecord/list'
	import examfailrecord from '@/views/exam/examfailrecord/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/examquestion',
			name: '试题管理',
			component: examquestion
		}
		,{
			path: '/zaixianjiaoyu',
			name: '在线教育',
			component: zaixianjiaoyu
		}
		,{
			path: '/exampaper',
			name: '试卷管理',
			component: exampaper
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/forum',
			name: '我的发布',
			component: forum
		}
		,{
			path: '/jiaoyuziyuan',
			name: '教育资源',
			component: jiaoyuziyuan
		}
		,{
			path: '/xuexijihua',
			name: '学习计划',
			component: xuexijihua
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/wanchengjihua',
			name: '完成计划',
			component: wanchengjihua
		}
		,{
			path: '/jiaoyufenlei',
			name: '教育分类',
			component: jiaoyufenlei
		}
		, {
			path: '/exampaperlist',
			name: '考试列表',
			component: exampaperlist
		}, {
			path: '/examrecord',
			name: '考试记录',
			component: examrecord
		}, {
			path: '/examfailrecord',
			name: '错题本',
			component: examfailrecord
		}
		]
	},
	{
		path: '/examination',
		name: '考试',
		component: examination
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
