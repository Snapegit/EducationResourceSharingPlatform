import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import jiaoyuziyuanList from '@/views/pages/jiaoyuziyuan/list'
import jiaoyuziyuanDetail from '@/views/pages/jiaoyuziyuan/formModel'
import jiaoyuziyuanAdd from '@/views/pages/jiaoyuziyuan/formAdd'
import zaixianjiaoyuList from '@/views/pages/zaixianjiaoyu/list'
import zaixianjiaoyuDetail from '@/views/pages/zaixianjiaoyu/formModel'
import zaixianjiaoyuAdd from '@/views/pages/zaixianjiaoyu/formAdd'
import forumList from '@/views/pages/forum/list'
import xuexijihuaList from '@/views/pages/xuexijihua/list'
import xuexijihuaDetail from '@/views/pages/xuexijihua/formModel'
import xuexijihuaAdd from '@/views/pages/xuexijihua/formAdd'
import wanchengjihuaList from '@/views/pages/wanchengjihua/list'
import wanchengjihuaDetail from '@/views/pages/wanchengjihua/formModel'
import wanchengjihuaAdd from '@/views/pages/wanchengjihua/formAdd'
import storeupList from '@/views/pages/storeup/list'
import jiaoyufenleiList from '@/views/pages/jiaoyufenlei/list'
import jiaoyufenleiDetail from '@/views/pages/jiaoyufenlei/formModel'
import jiaoyufenleiAdd from '@/views/pages/jiaoyufenlei/formAdd'
import exampaperList from '@/views/pages/exam/exampaperList'
import examination from '@/views/pages/exam/examination'
import examrecordList from '@/views/pages/exam/examrecordList'
import examfailrecord from '@/views/pages/exam/examfailrecord'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'jiaoyuziyuanList',
			component: jiaoyuziyuanList
		}, {
			path: 'jiaoyuziyuanDetail',
			component: jiaoyuziyuanDetail
		}, {
			path: 'jiaoyuziyuanAdd',
			component: jiaoyuziyuanAdd
		}
		, {
			path: 'zaixianjiaoyuList',
			component: zaixianjiaoyuList
		}, {
			path: 'zaixianjiaoyuDetail',
			component: zaixianjiaoyuDetail
		}, {
			path: 'zaixianjiaoyuAdd',
			component: zaixianjiaoyuAdd
		}
		, {
			path: 'forumList',
			component: forumList
		}
		, {
			path: 'xuexijihuaList',
			component: xuexijihuaList
		}, {
			path: 'xuexijihuaDetail',
			component: xuexijihuaDetail
		}, {
			path: 'xuexijihuaAdd',
			component: xuexijihuaAdd
		}
		, {
			path: 'wanchengjihuaList',
			component: wanchengjihuaList
		}, {
			path: 'wanchengjihuaDetail',
			component: wanchengjihuaDetail
		}, {
			path: 'wanchengjihuaAdd',
			component: wanchengjihuaAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'jiaoyufenleiList',
			component: jiaoyufenleiList
		}, {
			path: 'jiaoyufenleiDetail',
			component: jiaoyufenleiDetail
		}, {
			path: 'jiaoyufenleiAdd',
			component: jiaoyufenleiAdd
		}
		, {
			path: 'exampaperList',
			component: exampaperList
		}, {
			path: 'examrecordList',
			component: examrecordList
		}, {
			path: 'examfailrecord',
			component: examfailrecord
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
	, {
		path: '/examination',
		component: examination
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
