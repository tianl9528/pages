var countryAreaData = {
	"请选择一级分类":{
		"请选择二级分类":["请选择三级分类"]
	},
	"种植果蔬": {
		"粮油作物 ": ["豆类作物", "谷类作物", "油类作物", "薯类作物"],
		"经济作物": ["纺织作物","茶叶原料","其他作物"],
		"蔬菜作物": ["竹笋类","花菜类","叶菜类","豆荚类","瓜果类","块茎类","根菜类","水生菜类","野生菜类"],
		"水果作物": ["瓜类","柑橘类","浆果类","仁果类","核果类"]
	},
	"养殖水产": {
		"鲜活水产": ["鳖类","鱼类","虾类","贝类","藻类","螺类","蛙类","蟹类"],
		"禽畜养殖":["两栖类","家畜","家禽"],
		"特种养殖":["特种畜牧","特种禽类","特种水产"]
	},	
	"副食特产": {
		"副食特产": ["休闲食品 ","畜牧肉类制品","水产制品","蔬菜加工","水果加工","特色农产"],
		"农副产品": ["林业副产品","渔业副产品","畜牧副产品","粮油副产品"]
	},	
	"园林园艺": {
		"苗木": ["宝塔形","龙枝型","半球型","圆锥形","垂枝型","圆球型"],
		"盆景花卉": ["草本花卉","本木花卉","肉质花卉"],
		"园艺":["园艺资材","栽培基质","园艺景观","盆栽"],
		"草业":["草坪","工程草花"]
	},	
	"农资供应": {
		"种子种苗":["种子","种苗"],
		"农业化肥":["氮肥","磷肥","钾肥","复合肥","其他肥料"],
		"药品饲料":["农药","疫苗","饲料","牧草","兽药"],
		"农资工具":["五金工具","生成辅助","其他工具"]
	}
};

	$(document).ready(function() {
	
    $("#areaProvince").change(function() {
        LoadCity();
        LoadCounty();
    });

    $("#areaCity").change(function() {
        LoadCounty();
    });

        LoadArea('', '', '');
});

function LoadArea(prov, city, County) {
    LoadProvince(prov);
    LoadCity(city);
    LoadCounty(County);

}
function LoadProvince(values) {
    $("#areaProvince").empty();
    for (var id in countryAreaData) {

        $("#areaProvince").append(" <option value='" + id + "'>" + id + "</option>");

    }
    if (typeof(values) == "string") {
        $("#areaProvince option[value=" + values + "]").attr("selected", true)

    }
}
function LoadCity(values) {
    $("#areaCity").empty();
    $("#areaCounty").empty();
    var s1 = $("#areaProvince option:selected").val();
    for (var id2 in countryAreaData[s1]) {

        $("#areaCity").append(" <option value='" + id2 + "'>" + id2 + "</option>");
    }
    if (typeof(values) == "string") {
        $("#areaCity option[value=" + values + "]").attr("selected", true)

    }
}
function LoadCounty(values) {
    $("#areaCounty").empty();
    var str1 = $("#areaProvince option:selected").val();
    var str2 = $("#areaCity option:selected").val();

    for (i = 0; i < countryAreaData[str1][str2].length; i++) {
        str = countryAreaData[str1][str2][i];

        $("#areaCounty").append(" <option value='" + str + "'>" + str + "</option>");

    }
    if (typeof(values) == "string") {
        $("#areaCounty option[value=" + values + "]").attr("selected", true)

    }
}