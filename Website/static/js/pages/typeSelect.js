var part1 = [
	//一
	{
	    "name":"呼吸系统疾病",
        "value" : "1",
	    "children":[
	        {//1
	            "name" : "急性上呼吸道感染",
	            "value" : "1",
	            "children":[]
	        },
	        {//2
	            "name" : "急性气管-支气管炎",
	            "value" : "2",
	            "children":[]
	        },
	        {//3
	            "name" : "肺部感染性疾病",
	            "value" : "3",
	            "children":[
	                {"name":"细菌性肺炎","value" : "1","children":[
	                    {"name":"肺炎链球菌肺炎","value" : "1","children":[]},
	                    {"name":"葡萄球菌肺炎", "value" : "2","children":[]}
	                ]},
	                {"name":"其他病原体所致肺部感染","value" : "2","children":[
	                	{"name":"肺炎支原体肺炎","value" : "3", "children":[]},
	               	 	{"name":"肺炎衣原体肺炎" ,"value" : "4","children":[]},
	               	 	{"name":"病毒性肺炎","value" : "5","children":[]},
	                	{"name":"肺真菌病","value" : "6","children":[]},
	                	{"name":"肺念珠菌病","value" : "7","children":[]},
	                	{"name":"肺曲霉病","value" : "8","children":[]},
	                	{"name":"肺隐球菌病","value" : "9","children":[]},
	                	{"name":"肺孢子菌肺炎","value" : "10","children":[]}
	                ]},
	                {"name":"肺脓肿","value" : "3","children":[]}
	            ]
	        },
	        {//4
	            "name" : "支气管扩张症",
	            "value" : "4",
	            "children":[]
	        },
	        {//5
	            "name" : "肺结核",
	            "value" : "5",
	            "children":[
	                {"name":"陈旧性肺结核","value" : "4","children":[]}
	            ]
	        },
	        {//6
	            "name" : "慢性支气管炎",
	            "value" : "6",
	            "children":[]
	        },
	        {//7
	            "name" : "慢性阻塞性肺疾病",
	            "value" : "7",
	            "children":[]
	        },
	        {//8
	            "name" : "支气管哮喘",
	            "value" : "8",
	            "children":[
	                {"name":"过敏性鼻炎","value" : "5","children":[]},
	                {"name":"过敏性皮炎","value" : "6","children":[]}
	                ]
	        },
	        {//9
	            "name":"肺血栓栓塞症",
	            "value" : "9",
	            "children":[]
	        },
	        {//10
	            "name":"肺动脉高压",
	            "value" : "10",
	            "children":[]
	        },
	        {//11
	            "name":"肺源性心脏病",
	            "value" : "11",
	            "children":[
	                {"name":"慢性肺源性心脏病","value" : "7","children":[
	                	{"name":"慢性心力衰竭","value" : "11","children":[]}
	                ]}
	            ]
	        },
	        {//12
	            "name":"间质性肺疾病",
	            "value" : "12",
	            "children":[
	                {"name":"特发性肺纤维化","value" : "8","children":[]},
	                {"name":"肺泡蛋白质沉积症","value" : "9","children":[]},
	                {"name":"其他弥漫性间质性肺疾病","value" : "10","children":[]}
	            ]
	        },
	        {//13
	            "name":"结节病",
	            "value" : "13",
	            "children":[]
	        },
	        {//14
	            "name":"胸膜疾病",
	            "value" : "14",
	            "children":[
	                {"name":"胸腔积液","value" : "11","children":[]},
	                {"name":"气胸","value" : "12","children":[]}
	            ]
	        },
	        {//15
	            "name":"原发性支气管肺癌",
	            "value" : "15",
	            "children":[]
	        },
	        {//16
	            "name":"睡眠呼吸暂停低通气综合征",
	            "value" : "16",
	            "children":[]
	        }
	    ]
	},
	//二
	{
	   	"name":"心血管系统疾病",
	   	"value" : "2",
	    "children":[
	        {//1
	            "name":"心律失常",
	            "value" : "17",
	            "children":[
	                {"name":"窦性心律失常","value" : "13","children":[       //1.1
	                    {"name":"窦性心动过速","value" : "12","children":[]},
	                    {"name":"窦性心动过缓","value" : "13","children":[]},
	                    {"name":"窦性停搏","value" : "14","children":[]},
	                    {"name":"窦房传导阻滞","value" : "15","children":[]},
	                    {"name":"病态窦房结综合征","value" : "16","children":[]}
	                ]},
	                {"name":"房性心律失常","value" : "14","children":[       //1.2
	                    {"name":"房性期前收缩","value" : "17","children":[]},
	                    {"name":"房性心动过速","value" : "18","children":[]},
	                    {"name":"心房扑动","value" : "19","children":[]},
	                    {"name":"心房颤动","value" : "20","children":[]}
	                ]},
	                {"name":"房室交界区性心律失常","value" : "15","children":[   //1.3
	                    {"name":"房室交界区性期前收缩","value" : "21","children":[]},
	                    {"name":"房室交界区性逸搏与心律","value" : "22","children":[]},
	                    {"name":"非阵发性房室交界区性心动过速","value" : "23","children":[]},
	                    {"name":"与房室交界区相关的折返性心动过速","value" : "24","children":[]},
	                    {"name":"预激综合征","value" : "25","children":[]}
	                ]},
	                {"name":"室性心律失常","value" : "16","children":[   //1.4
	                    {"name":"室性期前收缩","value" : "26","children":[]},
	                    {"name":"室性心动过速","value" : "27","children":[]},
	                    {"name":"心室扑动与心室颤动","value" : "28","children":[]}
	                ]},
	                {"name":"心脏传导阻滞","value" : "17","children":[    //1.5
	                    {"name":"房室传导阻滞","value" : "29","children":[]},
	                    {"name":"室内传导阻滞","value" : "30","children":[]}
	                ]},
	                {"name":"心律失常治疗","value" : "18","children":[   //1.6
	                    {"name":"心脏电复律","value" : "31","children":[]},
	                    {"name":"埋藏式心脏复律除颤器","value" : "32","children":[]},
	                    {"name":"心脏起搏治疗","value" : "33","children":[]},
	                    {"name":"导管射频消融治疗快速性心律失常","value" : "34","children":[]},
	                    {"name":"快速性心律失常的","value" : "35","children":[]}
	                ]}
	            ]
	        },
	        {//2
	            "name":"先天性心血管病",
	            "value" : "18",
	            "children":[
	                {"name":"房间隔缺损","value" : "19","children":[]},
	                {"name":"室间隔缺损","value" : "20","children":[]},
	                {"name":"动脉导管未闭","value" : "21","children":[]},
	                {"name":"二叶主动脉瓣","value" : "22","children":[]},
	                {"name":"主动脉缩窄","value" : "23","children":[]},
	                {"name":"肺动脉瓣狭窄","value" : "24","children":[]},
	                {"name":"三尖瓣下移畸形","value" : "25","children":[]},
	                {"name":"主动脉窦动脉瘤","value" : "26","children":[]},
	                {"name":"法洛四联症","value" : "27","children":[]},
	                {"name":"艾森曼格综合征","value" : "28","children":[]}
	            ]
	        },
	        {//3
	        	"name":"高血压",
	        	"value" : "19",
	        	"children":[
	        		{"name":"原发性高血压","value" : "29","children":[]},
	        		{"name":"继发性高血压","value" : "30","children":[]}
	        	]
	        },
	        {//4
	        	"name":"动脉粥样硬化和冠状动脉粥样硬化性心脏病",
	        	"value" : "20",
	        	"children":[
	        		{"name":"动脉粥样硬化","value" : "31","children":[]},
	        		{"name":"冠状动脉粥样硬化性心脏病","value" : "32","children":[
	        			{"name":"心绞痛","value" : "36","children":[]},
	        			{"name":"心肌梗死","value" : "37","children":[]},
	        			{"name":"无症状性心肌缺血","value" : "38","children":[]},
	        			{"name":"缺血性心肌病","value" : "39","children":[]},
	        			{"name":"猝死","value" : "40","children":[]}
	        		]}
	        	]
	        },
	        {//5
	        	"name":"心脏瓣膜病",
	        	"value" : "21",
	        	"children":[
	        		{"name":"二尖瓣疾病","value" : "33","children":[
	        			{"name":"二尖瓣狭窄","value" : "41","children":[]},
	        			{"name":"二尖瓣关闭不全","value" : "42","children":[]}
	        		]},
	        		{"name":"主动脉瓣疾病","value" : "34","children":[
	        			{"name":"主动脉瓣狭窄","value" : "43","children":[]},
	        			{"name":"主动脉瓣关闭不全","value" : "44","children":[]}
	        		]},
	        		{"name":"三尖瓣和肺动脉瓣疾病","value" : "35","children":[
	        			{"name":"三尖瓣狭窄","value" : "45","children":[]},
	        			{"name":"三尖瓣关闭不全","value" : "46","children":[]},
	        			{"name":"肺动脉瓣狭窄","value" : "47","children":[]},
	        			{"name":"肺动脉瓣关闭不全","value" : "48","children":[]}
	        		]},
	        		{"name":"多瓣膜病","value" : "36","children":[]}
	        	]
	        },
	        {//6
	        	"name":"感染性心内膜炎",
	        	"value" : "22",
	        	"children":[
	        		{"name":"自体瓣膜心内膜炎","value" : "37","children":[]},
	        		{"name":"人工瓣膜和静脉药瘾者心内膜炎","value" : "38","children":[]}
	        	]
	        },
	        {//7
	        	"name":"心肌疾病",
	        	"value" : "23",
	        	"children":[
	        		{"name":"心肌病（原发性）","value" : "39","children":[
	        			{"name":"扩张型心肌病","value" : "49","children":[]},
	        			{"name":"肥厚型心肌病","value" : "50","children":[]},
	        			{"name":"限制型心肌病","value" : "51","children":[]},
	        			{"name":"致心律失常型右室心肌病","value" : "52","children":[]},
	        			{"name":"不定型的心肌病","value" : "53","children":[]}
	        		]},
	        		{"name":"特异性心肌病","value" : "40","children":[
	        			{"name":"酒精性心肌病","value" : "54","children":[]},
	        			{"name":"围生期心肌病","value" : "55","children":[]},
	        			{"name":"药物性心肌病","value" : "56","children":[]},
	        			{"name":"克山病","value" : "57","children":[]}
	        		]},
	        		{"name":"心肌炎","value" : "41","children":[]}
	        	]
	        },
	        {//8
	        	"name":"心包疾病",
	        	"value" : "24",
	        	"children":[
	        		{"name":"急性心包炎","value" : "42","children":[]},
	        		{"name":"缩窄性心包炎","value" : "43","children":[]}
	        	]
	        },
	        {//9
	        	"name":"主动脉和周围血管病",
	        	"value" : "25",
	        	"children":[
	        		{"name":"主动脉夹层","value" : "44","children":[]},
	        		{"name":"闭塞性周围动脉粥样硬化","value" : "45","children":[]},
	        		{"name":"静脉血栓症","value" : "46","children":[]}
	        	]
	        },
	        {//10
	        	"name":"心血管神经症",
	        	"value" : "26",
	        	"children":[]
	        }
	    ]
	},
	//三
	{
		"name":"消化系统疾病",
		"value" : "3",
		"children":[
			{//1
				"name":"胃食管反流病",
				"value" : "27",
				"children":[]
			},
			{//2
				"name":"食管癌",
				"value" : "28",
				"children":[]
			},
			{//3
				"name":"胃炎",
				"value" : "29",
				"children":[
					{"name":"急性胃炎","value" : "47","children":[]},
					{"name":"慢性胃炎","value" : "48","children":[]},
					{"name":"特殊类型胃炎","value" : "49","children":[]}
				]
			},
			{//4
				"name":"消化性溃疡",
				"value" : "30",
				"children":[]
			},
			{//5
				"name":"胃癌",
				"value" : "31",
				"children":[]
			},
			{//6
				"name":"肠结核和结核性腹膜炎",
				"value" : "32",
				"children":[
					{"name":"肠结核","value" : "50","children":[]},
					{"name":"结核性腹膜炎","value" : "51","children":[]}
				]
			},
			{//7
				"name":"炎症性肠病",
				"value" : "33",
				"children":[
					{"name":"溃疡性结肠炎","value" : "52","children":[]},
					{"name":"克罗恩病","value" : "53","children":[]}
				]
			},
			{//8
				"name":"大肠癌",
				"value" : "34",
				"children":[]
			},
			{//9
				"name":"功能性胃肠病",
				"value" : "35",
				"children":[
					{"name":"功能性消化不良","value" : "54","children":[]},
					{"name":"肠易激综合征","value" : "55","children":[]}
				]
			},
			{//10
				"name":"慢性腹泻",
				"value" : "36",
				"children":[]
			},
			{//11
				"name":"脂肪性肝病",
				"value" : "37",
				"children":[
					{"name":"非酒精性脂肪性肝病","value" : "56","children":[]},
					{"name":"酒精性肝病","value" : "57","children":[]}
				]
			},
			{//12
				"name":"自身免疫性肝病",
				"value" : "38",
				"children":[
					{"name":"自身免疫性肝炎","value" : "58","children":[]},
					{"name":"原发性胆汁性肝硬化","value" : "59","children":[]}
				]
			},
			{//13
				"name":"肝硬化",
				"value" : "39",
				"children":[]
			},
			{//14
				"name":"原发性肝癌",
				"value" : "40",
				"children":[]
			},
			{//15
				"name":"肝性脑病",
				"value" : "41",
				"children":[]
			},
			{//16
				"name":"胰腺炎",
				"value" : "42",
				"children":[
					{"name":"急性胰腺炎","value" : "60","children":[]},
					{"name":"慢性胰腺炎","value" : "61","children":[]}
				]
			},
			{//17
				"name":"胰腺癌",
				"value" : "43",
				"children":[]
			},
			{//18
				"name":"消化道出血",
				"value" : "44",
				"children":[
					{"name":"上消化道出血","value" : "62","children":[]},
					{"name":"下消化道出血","value" : "63","children":[]}
				]
			}
		]
	},
	//四
	{
		"name":"泌尿系统疾病",
		"value" : "4",
		"children":[
			{//1
				"name":"肾小球肾炎",
				"value" : "45",
				"children":[
					{"name":"急性肾小球肾炎","value" : "64","children":[]},
					{"name":"急进性肾小球肾炎","value" : "65","children":[]},
					{"name":"慢性肾小球肾炎","value" : "66","children":[]},
					{"name":"无症状性血尿或（和）蛋白尿","value" : "67","children":[]}
				]
			},
			{//2
				"name":"肾病综合征",
				"value" : "46",
				"children":[]
			},
			{//3
				"name":"IgA肾病","value" : "47","children":[]
			},
			{//4
				"name":"间质性肾炎","value" : "48","children":[
					{"name":"急性间质性肾炎","value" : "68","children":[]},
					{"name":"慢性间质性肾炎","value" : "69","children":[]}
				]
			},
			{//5
				"name":"尿路感染","value" : "49","children":[]
			},
			{//6
				"name":"肾小管疾病","value" : "50","children":[
					{"name":"肾小管酸中毒","value" : "70","children":[
						{"name":"低血钾型远端肾小管酸中毒","value" : "58","children":[]},
						{"name":"近端肾小管酸中毒","value" : "59","children":[]},
						{"name":"高血钾型远端肾小管酸中毒","value" : "60","children":[]}
					]},
					{"name":"Fanconi综合征","value" : "71","children":[]}
				]
			},
			{//7
				"name":"肾血管疾病","value" : "51","children":[
					{"name":"肾动脉狭窄","value" : "72","children":[]},
					{"name":"肾动脉栓塞和血栓形成","value" : "73","children":[]},
					{"name":"小动脉性肾硬化症","value" : "74","children":[
						{"name":"良性小动脉性肾硬化症","value" : "61","children":[]},
						{"name":"恶性小动脉性肾硬化症","value" : "62","children":[]}
					]},
					{"name":"肾静脉血栓形成","value" : "75","children":[]}
				]
			}
		]
	},
	//五
	{
		"name":"血液系统疾病",
		"value" : "5",
		"children":[
			{//1
				"name":"贫血","value" : "52","children":[
					{"name":"缺铁性贫血","value" : "76","children":[]},//1.1
					{"name":"巨幼细胞贫血","value" : "77","children":[]},
					{"name":"再生障碍性贫血","value" : "78","children":[]},
					{"name":"溶血性贫血","value" : "79","children":[
						{"name":"遗传性球形细胞增多症","value" : "63","children":[]},
						{"name":"红细胞葡萄糖-6-磷酸脱氢酶缺乏症","value" : "64","children":[]},
						{"name":"血红蛋白病","value" : "65","children":[
							"珠蛋白肽链分子结构异常",
							"珠蛋白肽链合成数量异常（地中海贫血）"
						]},
						{"name":"自身免疫性溶血性贫血","value" : "66","children":[
							"温抗体型AIHA",
							"冷抗体型AIHA"
						]},
						{"name":"阵发性睡眠性血红蛋白尿","value" : "67","children":[]}
					]}
				]
			},
			{//2
				"name":"白细胞减少和粒细胞缺乏症","value" : "53","children":[]
			},
			{//3
				"name":"骨髓增生异常综合征","value" : "54","children":[]
			},
			{//4
				"name":"白血病","value" : "55","children":[
					{"name":"急性白血病","value" : "80","children":[]},
					{"name":"慢性髓细胞白血病","value" : "81","children":[]},
					{"name":"慢性淋巴细胞白血病","value" : "82","children":[]}
				]
			},
			{//5
				"name":"淋巴瘤","value" : "56","children":[]
			},
			{//6
				"name":"多发性骨髓瘤","value" : "57","children":[]
			},
			{//7
				"name":"骨髓增生性疾病","value" : "58","children":[
					{"name":"真性红细胞增多症","value" : "83","children":[]},
					{"name":"原发性血小板增多症","value" : "84","children":[]},
					{"name":"原发性骨髓纤维化症","value" : "85","children":[]}
				]
			},
			{//8
				"name":"脾功能亢进","value" : "59","children":[]
			},
			{//9
				"name":"出血性疾病概述","value" : "60","children":[]
			},
			{//10
				"name":"紫癜性疾病","value" : "61","children":[
					{"name":"过敏性紫癜","value" : "86","children":[]},
					{"name":"特发性血小板减少性紫癜","value" : "87","children":[]},
					{"name":"血栓性血小板减少性紫癜","value" : "88","children":[]}
				]
			},
			{//11
				"name":"凝血障碍性疾病","value" : "62","children":[
					{"name":"血友病","value" : "89","children":[]},
					{"name":"血管性血友病","value" : "90","children":[]},
					{"name":"维生素K缺乏症","value" : "91","children":[]},
					{"name":"严重肝病与出血","value" : "92","children":[]}
				]
			},
			{//12
				"name":"弥散性血管内凝血","value" : "63","children":[]
			},
			{//13
				"name":"血栓性疾病","value" : "64","children":[]
			},
			{//14
				"name":"造血干细胞移植术后","value" : "65","children":[]
			},
		]
	},
	//六
	{
		"name":"内分泌系统疾病",
		"value" : "6",
		"children":[
			{//1
				"name":"垂体瘤","value" : "66","children":[
					{"name":"催乳素瘤","value" : "93","children":[]}
				]
			},
			{//2
				"name":"巨人症和肢端肥大症","value" : "67","children":[]
			},
			{//3
				"name":"腺垂体功能减退症","value" : "68","children":[]
			},
			{//4
				"name":"生长激素缺乏性侏儒症","value" : "69","children":[]
			},
			{//5
				"name":"尿崩症","value" : "70","children":[]
			},
			{//6
				"name":"抗利尿激素分泌失调综合征","value" : "71","children":[]
			},
			{//7
				"name":"甲状腺肿","value" : "72","children":[]
			},
			{//8
				"name":"甲状腺功能亢进症","value" : "73","children":[
					{"name":"Graves病","value" : "94","children":[]}
				]
			},
			{//9
				"name":"甲状腺功能减退症","value" : "74","children":[]
			},
			{//10
				"name":"甲状腺炎","value" : "75","children":[
					{"name":"亚急性甲状腺炎","value" : "95","children":[]},
					{"name":"自身免疫甲状腺炎","value" : "96","children":[]},
					{"name":"产后甲状腺炎","value" : "97","children":[]}
				]
			},
			{//11
				"name":"甲状腺结节与分化型甲状腺癌","value" : "76","children":[
					{"name":"甲状腺结节","value" : "98","children":[]},
					{"name":"分化型甲状腺癌","value" : "99","children":[]}
				]
			},
			{//12
				"name":"库欣综合征","value" : "77","children":[]
			},
			{//13
				"name":"原发性醛固酮增多症","value" : "78","children":[]
			},
			{//14
				"name":"原发性慢性肾上腺皮质功能减退症","value" : "79","children":[]
			},
			{//15
				"name":"嗜铬细胞瘤","value" : "80","children":[]
			},
			{//16
				"name":"原发性甲状旁腺功能亢进症","value" : "81","children":[]
			},
			{//17
				"name":"甲状旁腺功能减退症","value" : "82","children":[]
			},
			{//18
				"name":"多发性内分泌腺瘤病","value" : "83","children":[
					{"name":"多发性内分泌腺瘤病1型","value" : "100","children":[]},
					{"name":"多发性内分泌腺瘤病2型","value" : "101","children":[]}
				]
			},
			{//19
				"name":"伴瘤内分泌综合征","value" : "84","children":[]
			}
		]
	},
	//七
	{
		"name":"代谢疾病和营养疾病",
		"value" : "7",
		"children":[
			{//1
				"name":"糖尿病","value" : "85","children":[
					{"name":"糖尿病酮症酸中毒","value" : "102","children":[]},
					{"name":"高血糖高渗状态","value" : "103","children":[]}
				]
			},
			{//2
				"name":"低血糖症","value" : "86","children":[]
			},
			{//3
				"name":"血脂异常和脂蛋白异常血症","value" : "87","children":[]
			},
			{//4
				"name":"肥胖症","value" : "88","children":[
					{"name":"代谢综合征","value" : "104","children":[]}
				]
			},
			{//5
				"name":"水、电解质代谢和酸碱平衡失常","value" : "89","children":[
					{"name":"水、钠代谢失常","value" : "105","children":[
						{"name":"失水","value" : "68","children":[]},
						{"name":"水过多和水中毒","value" : "69","children":[]},
						{"name":"低钠血症","value" : "70","children":[]},
						{"name":"高钠血症","value" : "71","children":[]}
					]},
					{"name":"钾代谢失常","value" : "106","children":[
						{"name":"钾缺乏和低钾血症","value" : "72","children":[]},
						{"name":"高钾血症	","value" : "73","children":[]}
					]},
					{"name":"酸碱平衡失常","value" : "107","children":[
						{"name":"代谢性酸中毒","value" : "74","children":[]},
						{"name":"代谢性碱中毒","value" : "75","children":[]},
						{"name":"呼吸性酸中毒","value" : "76","children":[]},
						{"name":"呼吸性碱中毒","value" : "77","children":[]},
						{"name":"混合型酸碱平衡障碍","value" : "78","children":[]}
					]},
				]
			},
			{//6
				"name":"高尿酸血症","value" : "90","children":[]
			},
			{//7
				"name":"痛风","value" : "91","children":[]
			},
			{//8
				"name":"骨质疏松症","value" : "92","children":[]
			}
		]
	},
	//八
	{
		"name":"风湿性疾病",
		"value" : "8",
		"children":[
			{//1
				"name":"类风湿关节炎","value" : "93","children":[]
			},
			{//2
				"name":"系统性红斑狼疮","value" : "94","children":[
					{"name":"狼疮肾炎","value" : "108","children":[]}
				]
			},
			{//3
				"name":"血清阴性脊柱关节病","value" : "95","children":[
					{"name":"强直性脊柱炎","value" : "109","children":[]},
					{"name":"其他血清阴性脊柱关节病","value" : "110","children":[]}
				]
			},
			{//4
				"name":"干燥综合征","value" : "96","children":[]
			},
			{//5
				"name":"血管炎病","value" : "97","children":[
					{"name":"大动脉炎","value" : "111","children":[]},
					{"name":"巨细胞动脉炎","value" : "112","children":[]},
					{"name":"结节性多动脉炎","value" : "113","children":[]},
					{"name":"显微镜下多血管炎","value" : "114","children":[]},
					{"name":"变应性肉芽肿血管炎","value" : "115","children":[]},
					{"name":"韦格纳肉芽肿","value" : "116","children":[]},
					{"name":"超敏性血管炎","value" : "117","children":[]},
					{"name":"贝赫切特病","value" : "118","children":[]}
				]
			},
			{//6
				"name":"特发性炎症性疾病","value" : "98","children":[]
			},
			{//7
				"name":"系统性硬化病","value" : "99","children":[]
			},
			{//8
				"name":"雷诺现象与雷诺病","value" : "100","children":[]
			},
			{//9
				"name":"骨关节炎","value" : "101","children":[]
			},
			{//10
				"name":"纤维肌痛综合征","value" : "102","children":[]
			}
		]
	},
	//九
	{
		"name":"神经内科及精神疾病",
		"value" : "9",
		"children":[
			{//1
				"name":"脑血管疾病","value" : "103","children":[
					{"name":"脑梗塞","value" : "119","children":[]},
					{"name":"脑出血","value" : "120","children":[]}
				]
			},
			{//2
				"name":"偏头痛","value" : "104","children":[]
			},
			{//3
				"name":"脑部炎症性疾病","value" : "105","children":[
                    {"name":"脑炎","value" : "121","children":[]},
					{"name":"脑膜炎","value" : "122","children":[]}
				]
			},
			{//4
				"name":"脊髓炎","value" : "106","children":[]
			},
			{//5
				"name":"癫痫","value" : "107","children":[]
			},
			{//6
				"name":"痴呆","value" : "108","children":[]
			},
			{//7
				"name":"神经系统变性病","value" : "109","children":[]
			},
			{//8
				"name":"代谢病和遗传病","value" : "110","children":[]
			},
			{//9
				"name":"三叉神经痛","value" : "111","children":[]
			},
			{//10
				"name":"坐骨神经病","value" : "112","children":[]
			},
			{//11
				"name":"周围神经病","value" : "113","children":[]
			},
			{//12
				"name":"重症肌无力","value" : "114","children":[]
			},
			{//13
				"name":"精神病","value" : "115","children":[
					{"name":"精神分裂症","value" : "123","children":[]},
					{"name":"偏执型精神病","value" : "124","children":[]},
					{"name":"情感障碍","value" : "125","children":[]},
					{"name":"人格障碍","value" : "126","children":[]},
					{"name":"性心理障碍","value" : "127","children":[]},
					{"name":"精神发育迟缓","value" : "128","children":[]}
				]
			},
			{//14
				"name":"焦虑状态","value" : "116","children":[]
			},
			{//15
				"name":"抑郁状态","value" : "117","children":[]
			}
		]
	},
	//十
	{
		"name":"外科疾病",
		"value" : "10",
		"children":[
			{//1
				"name":"软组织的急性化脓性感染","value" : "118","children":[
					{"name":"疖","value" : "129","children":[]},
					{"name":"痈","value" : "130","children":[]},
					{"name":"皮下急性蜂窝织炎","value" : "131","children":[]},
					{"name":"丹毒","value" : "132","children":[]},
					{"name":"急性淋巴管炎和急性淋巴结炎","value" : "133","children":[]}
				]
			},
			{//2
				"name":"手部急性化脓性感染","value" : "119","children":[
					{"name":"甲沟炎","value" : "134","children":[]},
					{"name":"脓性指头炎","value" : "135","children":[]},
					{"name":"腱鞘炎","value" : "136","children":[]},
					{"name":"滑囊炎","value" : "137","children":[]},
					{"name":"手掌深部间隙感染","value" : "138","children":[]}
				]
			},
			{//3
				"name":"全身性外科感染","value" : "120","children":[]
			},
			{//4
				"name":"有芽胞厌氧菌感染","value" : "121","children":[
					{"name":"破伤风","value" : "139","children":[]},
					{"name":"气性坏疽","value" : "140","children":[]}
				]
			},
			{//5
				"name":"肿瘤","value" : "122","children":[
					{"name":"皮肤乳头状瘤","value" : "141","children":[]},
					{"name":"皮肤癌","value" : "142","children":[]},
					{"name":"黑痣与黑色素瘤","value" : "143","children":[]},
					{"name":"纤维瘤及纤维瘤样病变","value" : "144","children":[]},
					{"name":"脂肪瘤","value" : "145","children":[]},
					{"name":"血管瘤","value" : "146","children":[]},
					{"name":"神经纤维瘤","value" : "147","children":[]},
					{"name":"囊性肿瘤及囊肿","value" : "148","children":[]}
				]
			},
			{//6
				"name":"移植手术","value" : "123","children":[
					{"name":"肺脏移植","value" : "149","children":[]},
					{"name":"肝脏移植","value" : "150","children":[]},
					{"name":"肾脏移植","value" : "151","children":[]},
					{"name":"骨髓移植","value" : "152","children":[]}
				]
			},
			{//7
				"name":"颅内压增高征","value" : "124","children":[
					{"name":"颅内压增高","value" : "153","children":[]},
					{"name":"脑疝","value" : "154","children":[]}
				]
			},
			{//8
				"name":"颅脑损伤","value" : "125","children":[
					{"name":"头皮损伤","value" : "155","children":[]},
					{"name":"颅骨骨折","value" : "156","children":[]}
				]
			},
			{//9
				"name":"脑损伤","value" : "126","children":[
					{"name":"脑震荡","value" : "157","children":[]},
					{"name":"脑挫裂伤","value" : "158","children":[]},
					{"name":"原发性脑干损伤","value" : "159","children":[]}
				]
			},
			{//10
				"name":"颅内血肿","value" : "127","children":[]
			},
			{//11
				"name":"颅脑、脊髓的先天畸形","value" : "128","children":[]
			},
			{//12
				"name":"颅内和椎管内肿瘤","value" : "129","children":[
					{"name":"颅内肿瘤","value" : "160","children":[]},
					{"name":"椎管内肿瘤","value" : "161","children":[]}
				]
			},
			{//13
				"name":"颅内和椎管内血管性疾病","value" : "130","children":[
					{"name":"自发性蛛网膜下腔出血","value" : "162","children":[]},
					{"name":"出血性脑卒中","value" : "163","children":[]}
				]
			},
			{//14
				"name":"颈部疾病","value" : "131","children":[
					{"name":"颈椎病","value" : "164","children":[]}
				]
			},
			{//15
				"name":"甲状腺疾病","value" : "132","children":[
					{"name":"单纯性甲状腺肿","value" : "165","children":[]},
					{"name":"甲状腺功能亢进的","value" : "166","children":[]},
					{"name":"甲状腺炎","value" : "167","children":[]},
					{"name":"甲状腺腺瘤","value" : "168","children":[]},
					{"name":"甲状腺癌","value" : "169","children":[]}
				]
			},
			{//16
				"name":"乳房疾病","value" : "133","children":[
					{"name":"急性乳腺炎","value" : "170","children":[]},
					{"name":"乳腺囊性增生病","value" : "171","children":[]},
					{"name":"乳房肿瘤","value" : "172","children":[
						{"name":"乳房纤维腺瘤","value" : "79","children":[]},
						{"name":"乳管内乳头状瘤","value" : "80","children":[]},
						{"name":"乳腺癌","value" : "81","children":[]}
					]}
				]
			},
			{//17
				"name":"胸部损伤","value" : "134","children":[
					{"name":"肋骨骨折","value" : "173","children":[]},
					{"name":"气胸","value" : "174","children":[]}
				]
			},
			{//18
				"name":"胸壁疾病及脓胸","value" : "135","children":[
					{"name":"非特异性肋软骨炎","value" : "175","children":[]},
					{"name":"脓胸","value" : "176","children":[]},
					{"name":"肺部疾病","value" : "177","children":[
						{"name":"肺癌","value" : "82","children":[]},
						{"name":"肺结核","value" : "83","children":[]},
						{"name":"胸膜疾病","value" : "84","children":[]}
					]}
				]
			},
			{//19
				"name":"食管疾病","value" : "136","children":[
					{"name":"食管癌","value" : "178","children":[]},
					{"name":"食管良性疾病","value" : "179","children":[
						{"name":"食管良性肿瘤","value" : "85","children":[]},
						{"name":"食管灼伤","value" : "86","children":[]},
						{"name":"贲门失弛缓症","value" : "87","children":[]}
					]}
				]
			},
			{//20
				"name":"纵隔和心脏疾病","value" : "137","children":[
					{"name":"先天性心脏病","value" : "180","children":[]},
					{"name":"心瓣膜病","value" : "181","children":[]},
					{"name":"纵隔肿瘤","value" : "182","children":[]}
				]
			},
			{//21
				"name":"腹外疝","value" : "138","children":[
					{"name":"腹股沟疝","value" : "183","children":[]},
					{"name":"股疝","value" : "184","children":[]},
					{"name":"其他疝","value" : "185","children":[]}
				]
			},
			{//22
				"name":"急性化脓性腹膜炎","value" : "139","children":[]
			},
			{//23
				"name":"腹部损伤","value" : "140","children":[
					{"name":"腹内脏器损伤","value" : "186","children":[]}
				]
			},
			{//24
				"name":"胃和十二指肠疾病","value" : "141","children":[
					{"name":"急性胃、十二指肠溃疡穿孔","value" : "187","children":[]},
					{"name":"胃、十二指肠溃疡大出血","value" : "188","children":[]},
					{"name":"胃、十二指肠溃疡瘢痕性幽门梗阻","value" : "189","children":[]},
					{"name":"胃癌","value" : "190","children":[]},
					{"name":"先天性肥厚性幽门狭窄","value" : "191","children":[]}
				]
			},
			{//25
				"name":"肠梗阻","value" : "142","children":[]
			},
			{//26
				"name":"阑尾炎","value" : "143","children":[]
			},
			{//27
				"name":"溃疡性结肠炎","value" : "144","children":[]
			},
			{//28
				"name":"肠息肉及直肠息肉","value" : "145","children":[]
			},
			{//29
				"name":"结肠癌","value" : "146","children":[]
			},
			{//30
				"name":"直肠癌","value" : "147","children":[]
			},
			{//31
				"name":"直肠肛管疾病","value" : "148","children":[]
			},
			{//32
				"name":"肝疾病","value" : "149","children":[
					{"name":"肝脓肿","value" : "192","children":[]},
					{"name":"肝肿瘤","value" : "193","children":[]},
					{"name":"肝硬化门静脉高压症","value" : "194","children":[]}
				]
			},
			{//33
				"name":"胆道疾病","value" : "150","children":[
					{"name":"胆石病","value" : "195","children":[]},
					{"name":"胆道感染","value" : "196","children":[]},
					{"name":"急性胆囊炎","value" : "197","children":[]},
					{"name":"慢性胆囊炎","value" : "198","children":[]},
					{"name":"急性梗阻性化脓性胆管炎","value" : "199","children":[]}
				]
			},
			{//34
				"name":"胆道肿瘤","value" : "151","children":[
					{"name":"胆囊息肉和良性肿瘤","value" : "200","children":[]},
					{"name":"胆囊癌","value" : "201","children":[]},
					{"name":"胆管癌","value" : "202","children":[]}
				]
			},
			{//35
				"name":"胰腺疾病","value" : "152","children":[
					{"name":"胰腺炎","value" : "203","children":[]},
					{"name":"胰腺囊肿","value" : "204","children":[]},
					{"name":"胰腺癌和壶腹周围癌","value" : "205","children":[]}
				]
			},
			{//36
				"name":"周围血管损伤","value" : "153","children":[]
			},
			{//37
				"name":"动脉疾病","value" : "154","children":[
					{"name":"动脉硬化性闭塞症","value" : "206","children":[]},
					{"name":"血栓闭塞性脉管炎","value" : "207","children":[]}
				]
			},
			{//38
				"name":"静脉疾病","value" : "155","children":[
					{"name":"下肢慢性静脉功能不全","value" : "208","children":[]},
					{"name":"深静脉血栓形成","value" : "209","children":[]}
				]
			},
			{//39
				"name":"泌尿、男性生殖系统","value" : "156","children":[
					{"name":"泌尿、男性生殖系统先天性畸形","value" : "210","children":[]},
					{"name":"泌尿系统损伤","value" : "211","children":[]},
					{"name":"泌尿、男性生殖系统感染与结核","value" : "212","children":[]},
					{"name":"泌尿系统梗阻与尿石症","value" : "213","children":[]},
					{"name":"泌尿、男性生殖系统肿瘤","value" : "214","children":[]},
					{"name":"泌尿、男性生殖系统的其他","value" : "215","children":[]}
				]
			},
			{//40
				"name":"男性性功能障碍与不育症","value" : "157","children":[]
			},
			{//41
				"name":"骨折","value" : "158","children":[
					{"name":"上肢骨、关节损伤","value" : "216","children":[]},
					{"name":"下肢骨折与脱位","value" : "217","children":[]},
					{"name":"脊柱和骨盆骨折","value" : "218","children":[]}
				]
			},
			{//42
				"name":"周围神经损伤","value" : "159","children":[]
			},
			{//43
				"name":"运动系统慢性损伤","value" : "160","children":[]
			},
			{//44
				"name":"腰腿痛和颈肩痛","value" : "161","children":[]
			},
			{//45
				"name":"骨与关节化脓性感染","value" : "162","children":[]
			},
			{//46
				"name":"骨与关节结核","value" : "163","children":[]
			},
			{//47
				"name":"非化脓性关节炎","value" : "164","children":[]
			},
			{//48
				"name":"运动系统畸形","value" : "165","children":[]
			},
			{//49
				"name":"骨肿瘤","value" : "166","children":[]
			},
			{//50
				"name":"皮肤病","value" : "167","children":[
					{"name":"变态反应性皮肤病","value" : "219","children":[]},
					{"name":"感染性皮肤病","value" : "220","children":[]},
					{"name":"其他皮肤病","value" : "221","children":[]}
				]
			},
		]
	},
	//十一
	{
		"name":"妇科疾病",
		"value" : "11",
		"children":[
			{//1
				"name":"妇科炎症","value" : "168","children":[
					{"name":"宫颈炎","value" : "222","children":[]},
					{"name":"阴道炎","value" : "223","children":[]},
					{"name":"盆腔炎","value" : "224","children":[]},
					{"name":"子宫内膜炎","value" : "225","children":[]}
				]
			},
			{//2
				"name":"人工流产","value" : "169","children":[]
			},
			{//3
				"name":"性病","value" : "170","children":[
					{"name":"尖锐湿疣","value" : "226","children":[]},
					{"name":"梅毒","value" : "227","children":[]},
					{"name":"生殖器疱疹","value" : "228","children":[]},
					{"name":"淋病","value" : "229","children":[]},
					{"name":"艾滋病","value" : "230","children":[]}
				]
			},
			{//4
				"name":"月经不调","value" : "171","children":[]
			},
			{//5
				"name":"卵巢疾病","value" : "172","children":[]
			},
			{//6
				"name":"内分泌疾病","value" : "173","children":[]
			},
			{//7
				"name":"妇科炎症","value" : "174","children":[]
			},
			{//8
				"name":"不孕不育","value" : "175","children":[]
			},
			{//9
				"name":"妇科肿瘤","value" : "176","children":[
					{"name":"子宫肌瘤","value" : "231","children":[]},
					{"name":"宫颈囊肿","value" : "232","children":[]},
					{"name":"卵巢肿瘤","value" : "233","children":[]},
					{"name":"宫颈癌","value" : "234","children":[]}
				]
			}
		]
	},
	//十二
	{
		"name":"其他疾病","value" : "12","children":[]
	}
]
var part2 = [
	{
		"name":"呼吸衰竭","children":[
			{"name":"急性呼吸衰竭","children":[]},
			{"name":"慢性呼吸衰竭","children":[]}
		]
	},
	{
		"name":"心力衰竭","children":[
			{"name":"急性心力衰竭","children":[]},
			{"name":"慢性心力衰竭","children":[
				{"name":"心功能不全（NYHA分级）","children":[
				{"name":"I级","children":[]},
				{"name":"Ⅱ级","children":[]},
				{"name":"Ⅲ级","children":[]},
				{"name":"Ⅳ级","children":[]}
				]},
				{"name":"心功能不全（AHA/ACC分级）","children":[
				{"name":"A期","children":[]},
				{"name":"B期","children":[]},
				{"name":"C期","children":[]},
				{"name":"D期","children":[]}
				]},
			]}
		]
	},
	{
		"name":"肾衰竭","children":[
			{"name":"急性肾衰竭","children":[]},
			{"name":"慢性肾衰竭","children":[
				{"name":"代谢性酸中毒","children":[]}
			]},

		]
	},
	{
		"name":"手术后状态","children":[]
	}
]

function diseaseType1(id) {
	var l1 = document.createElement("select");
	l1.className = "form-control";
	l1.name = "first";
    var l2 = document.createElement("select");
    l2.className = "form-control";
    l2.name = "second";
    var l3 = document.createElement("select");
    l3.className = "form-control";
    l3.name = "third";
    var l4 = document.createElement("select");
    l4.className = "form-control";
    l4.name = "fourth";
	$("#"+id).append(l1);
    l1.options[0] = new Option("请选择");

	for (var i=0;i<part1.length;i++){
        l1.options[l1.length] = new Option(part1[i].name, part1[i].name);
    }
    l1.onchange = function(){
    $("#"+id+">select[name='second']").remove();
    $("#"+id+">select[name='third']").remove();
    $("#"+id+">select[name='fourth']").remove();
    if(part1[l1.selectedIndex-1].children.length>0)
    {
		l2.innerHTML = "";
        l3.innerHTML = "";
        l4.innerHTML = "";
		//填第二级
		l2.options[0] = new Option("请选择");
	    $("#"+id).append(l2);
		for (var j=0;j<part1[l1.selectedIndex-1].children.length;j++){
            l2.options[l2.length] = new Option(part1[l1.selectedIndex-1].children[j].name, part1[l1.selectedIndex-1].children[j].name);
        }
		l2.onchange = function(){
        $("#"+id+">select[name='third']").remove();
        $("#"+id+">select[name='fourth']").remove();
        if(part1[l1.selectedIndex-1].children[l2.selectedIndex-1].children.length>0){
            l3.innerHTML = "";
            l4.innerHTML = "";
            l3.options[0] = new Option("请选择");
	        $("#"+id).append(l3);
            for (var k=0;k<part1[l1.selectedIndex-1].children[l2.selectedIndex-1].children.length;k++){
                l3.options[l3.length] = new Option(part1[l1.selectedIndex-1].children[l2.selectedIndex-1].children[k].name,
                        part1[l1.selectedIndex-1].children[l2.selectedIndex-1].children[k].name);
            }
            l3.onchange = function(){
                $("#"+id+">select[name='fourth']").remove();
                if(part1[l1.selectedIndex-1].children[l2.selectedIndex-1].children[l3.selectedIndex-1].children.length)
                {
                    l4.innerHTML = "";
                    l4.options[0] = new Option("请选择");
                    $("#"+id).append(l4);
                    for (var l=0;l<part1[l1.selectedIndex-1].children[l2.selectedIndex-1].children[l3.selectedIndex-1].children.length;l++){
                        l4.options[l4.length] = new Option(part1[l1.selectedIndex-1].children[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l].name,
                                part1[l1.selectedIndex-1].children[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l].name);
                    }
                }
            }
        }}
	}}
}

function diseaseType2(id) {
	var l1 = document.createElement("select");
	l1.className = "form-control";
	l1.name = "subFirst";
    var l2 = document.createElement("select");
    l2.className = "form-control";
    l2.name = "subSecond";
    var l3 = document.createElement("select");
    l3.className = "form-control";
    l3.name = "subThird";
    var l4 = document.createElement("select");
    l4.className = "form-control";
    l4.name = "subFourth";
	$("#"+id).append(l1);
    l1.options[0] = new Option("请选择");

	for (var i=0;i<part2.length;i++){
        l1.options[l1.length] = new Option(part2[i].name, part2[i].name);
    }
    l1.onchange = function(){
    $("#"+id+">select[name='subSecond']").remove();
    $("#"+id+">select[name='subThird']").remove();
    $("#"+id+">select[name='subFourth']").remove();
    if(part2[l1.selectedIndex-1].children.length>0)
    {
		l2.innerHTML = "";
        l3.innerHTML = "";
        l4.innerHTML = "";
		//填第二级
		l2.options[0] = new Option("请选择");
	    $("#"+id).append(l2);
		for (var j=0;j<part2[l1.selectedIndex-1].children.length;j++){
            l2.options[l2.length] = new Option(part2[l1.selectedIndex-1].children[j].name, part2[l1.selectedIndex-1].children[j].name);
        }
		l2.onchange = function(){
        $("#"+id+">select[name='subThird']").remove();
        $("#"+id+">select[name='subFourth']").remove();
        if(part2[l1.selectedIndex-1].children[l2.selectedIndex-1].children.length>0){
            l3.innerHTML = "";
            l4.innerHTML = "";
            l3.options[0] = new Option("请选择");
	        $("#"+id).append(l3);
            for (var k=0;k<part2[l1.selectedIndex-1].children[l2.selectedIndex-1].children.length;k++){
                l3.options[l3.length] = new Option(part2[l1.selectedIndex-1].children[l2.selectedIndex-1].children[k].name,
                        part2[l1.selectedIndex-1].children[l2.selectedIndex-1].children[k].name);
            }
            l3.onchange = function(){
                $("#"+id+">select[name='subFourth']").remove();
                if(part2[l1.selectedIndex-1].children[l2.selectedIndex-1].children[l3.selectedIndex-1].children.length)
                {
                    l4.innerHTML = "";
                    l4.options[0] = new Option("请选择");
                    $("#"+id).append(l4);
                    for (var l=0;l<part2[l1.selectedIndex-1].children[l2.selectedIndex-1].children[l3.selectedIndex-1].children.length;l++){
                        l4.options[l4.length] = new Option(part2[l1.selectedIndex-1].children[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l].name,
                                part2[l1.selectedIndex-1].children[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l].name);
                    }
                }
            }
        }}
	}}
}
//	var l2 = document.createElement("select");
//	l2.className = "form-control";
//	l2.name = "one";
//	var l3 = document.createElement("select");
//	l3.className = "form-control";
//	l3.name = "two";
//	var l4 = document.createElement("select");
//	l4.className = "form-control";
//	l4.name = "three";
//	var l5 = document.createElement("select");
//	l5.className = "form-control";
//	l5.name = "four";
//	$("#"+id).append(l1);
//	$("#"+id).append(l2);
//	$("#"+id).append(l3);
//	$("#"+id).append(l4);
//	$("#"+id).append(l5);
//	l1.options[0] = new Option("请选择");
//	l1.options[1] = new Option("第一部分诊断", "1");
//	l1.options[2] = new Option("第二部分诊断", "2");
	
    
//	l1.onchange = function(){
//		l2.innerHTML = "";
//		l3.innerHTML = "";
//		l4.innerHTML = "";
//		l5.innerHTML = "";
//		//填第二级
//		l2.options[0] = new Option("请选择疾病分类");
//		if(l1.value == "1"){
//			for (var i=0;i<part1.length;i++){
//				l2.options[l2.length] = new Option(part1[i].name, part1[i].value);
//			}
//		}else if(l1.value == "2"){
//			for (var i=0;i<part2.length;i++){
//				l2.options[l2.length] = new Option(part2[i].name);
//			}
//		}
//
//		l2.onchange = function(){
//			l3.innerHTML = "";
//			l4.innerHTML = "";
//			l5.innerHTML = "";
//			//填第三级
//			l3.options[0] = new Option("请选择");
//			if(l1.value == "第一部分诊断"){
//				for (var j=0;j<part1[l2.selectedIndex-1].children.length;j++){
//					l3.options[l3.length] = new Option(part1[l2.selectedIndex-1].children[j].name, part1[l2.selectedIndex-1].children[j].value);
//				}
//			}else if(l1.value == "第二部分诊断"){
//				for (var j=0;j<part2[l2.selectedIndex-1].children.length;j++){
//					l3.options[l3.length] = new Option(part2[l2.selectedIndex-1].children[j].name);
//				}
//			}
//
//			l3.onchange = function(){
//				l4.innerHTML = "";
//				l5.innerHTML = "";
//				//填第四级
//				l4.options[0] = new Option("请选择");
//				if(l1.value == "第一部分诊断"){
//					for (var k=0;k<part1[l2.selectedIndex-1].children[l3.selectedIndex-1].children.length;k++){
//						l4.options[l4.length] = new Option(part1[l2.selectedIndex-1].children[l3.selectedIndex-1].children[k].name,
//						part1[l2.selectedIndex-1].children[l3.selectedIndex-1].children[k].value);
//					}
//				}else if(l1.value == "第二部分诊断"){
//					for (var k=0;k<part2[l2.selectedIndex-1].children[l3.selectedIndex-1].children.length;k++){
//						l4.options[l4.length] = new Option(part2[l2.selectedIndex-1].children[l3.selectedIndex-1].children[k].name);
//					}
//				}
//
//				l4.onchange = function(){
//					l5.innerHTML = "";
//					//填第五级
//					l5.options[0] = new Option("请选择");
//					if(l1.value == "第一部分诊断"){
//						for (var l=0;l<part1[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l4.selectedIndex-1].children.length;l++){
//							l5.options[l5.length] = new Option(part1[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l4.selectedIndex-1].children[l].name,
//							part1[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l4.selectedIndex-1].children[l].value);
//						}
//					}else if(l1.value == "第二部分诊断"){
//						for (var l=0;l<part2[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l4.selectedIndex-1].children.length;l++){
//							l5.options[l5.length] = new Option(part2[l2.selectedIndex-1].children[l3.selectedIndex-1].children[l4.selectedIndex-1].children[l].name);
//						}
//					}
//
//				}
//			}
//
//
//		}
//	}

