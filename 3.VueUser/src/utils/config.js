const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '在线教育',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'在线教育',
							url:'/index/zaixianjiaoyuList'
						},
					]
				},
				{
					name: '考试与评估',
					icon: 'icon-common48',
					child:[
						{
							name:'试卷列表',
							url:'/index/exampaperList'
						},
					]
				},
				{
					name: '教育资源',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'教育资源',
							url:'/index/jiaoyuziyuanList'
						},
					]
				},
				{
					name: '学习社区',
					icon: 'icon-common19',
					child:[
						{
							name:'学习社区',
							url:'/index/forumList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "教育资源共享平台"
        } 
    }
}
export default config
