$(document).ready(function() {
		$("#prosupform").validate({
			rules: {
				spName: {
					required: true
				},
				spPrice: {
					required: true,
					number: true
				},
				spNum: {
					required: true,
					number: true
				},
				prosupend: {
					required: true
				},
				imgfile:{
					required: true
				},
				first:{
					required: true
				},
				second:{
					required: true
				},
				third:{
					required: true
				},
				unit:{
					required: true
				}
			},
			messages: {
				spName: {
					required: "必填"
				},
				spPrice: {
					required: "必填",
					number: "请输入数字"
				},
				spNum: {
					required: "必填",
					number: "请输入数字"
				},
				prosupend: {
					required: "必选"
				},
				imgfile:{
					required: "必选"
				},
				first:{
					required: "必选"
				},
				second:{
					required: "必选"
				},
				third:{
					required: "必选"
				},
				unit:{
					required: "必选"
				}
			}
		});
		
		$("#probuyform").validate({
			rules:{
				first:{
					required: true
				},
				second:{
					required: true
				},
				third:{
					required: true
				},
				pbName:{
					required: true
				},
				pbPrice:{
					required: true,
					number: true
				},
				pbNum:{
					required: true,
					number: true
				},
				unit:{
					required: true
				},
				prodemend:{
					required: true
				}
			},
			messages:{
				first:{
					required: "必选"
				},
				second:{
					required: "必选"
				},
				third:{
					required: "必选"
				},
				pbName:{
					required: "必填"
				},
				pbPrice:{
					required: "必填",
					number: "请输入数字"
				},
				pbNum:{
					required: "必填",
					number: "请输入数字"
				},
				unit:{
					required: "必选"
				},
				prodemend:{
					required: "必选"
				}
			}			
		});
		
		$("#techsuppform").validate({
			rules:{
				ft:{
					required: true
				},
				st:{
					required: true
				},
				tecname:{
					required: true
				},
				proType:{
					required: true
				},
				tecsupend:{
					required: true
				}
			},
			messages:{
				ft:{
					required: "必选"
				},
				st:{
					required: "必选"
				},
				tecname:{
					required: "必填"
				},
				proType:{
					required: "必填"
				},
				tecsupend:{
					required: "必选"
				}
			}			
		});
		
		$("#techdemaform").validate({
			rules:{
				ft:{
					required: true
				},
				st:{
					required: true
				},
				tecname:{
					required: true
				},
				proType:{
					required: true
				},
				tecdemend:{
					required: true
				}
			},
			messages:{
				ft:{
					required: "必选"
				},
				st:{
					required: "必选"
				},
				tecname:{
					required: "必填"
				},
				proType:{
					required: "必填"
				},
				tecdemend:{
					required: "必选"
				}
			}			
		});
		
		$("#investform").validate({
			rules:{
				inName:{
					required: true
				},
				inPrice:{
					required: true,
					number: true
				},
				inNum:{
					required: true,
					number: true
				},
				unit:{
					required: true
				},
				investend:{
					required: true
				},
				imgfile:{
					required: true
				}
			},
			messages:{
				inName:{
					required: "必填"
				},
				inPrice:{
					required: "必填",
					number: "请输入数字"
				},
				inNum:{
					required: "必填",
					number: "请输入数字"
				},
				unit:{
					required: "必选"
				},
				investend:{
					required: "必选"
				},
				imgfile:{
					required: "必选"
				}
			}			
		});
		
		$("#jobseekform").validate({
			rules:{
				eduction:{
					required: true
				},
				major:{
					required: true
				},
				college:{
					required: true
				},
				postion:{
					required: true
				},
				salary:{
					required: true,
					number:true
				},
				linkmail:{
					required: true
				},
				mphone:{
					required: true
				}
			},
			messages:{
				eduction:{
					required: "必填"
				},
				major:{
					required: "必填"
				},
				college:{
					required: "必填"
				},
				postion:{
					required: "必填"
				},
				salary:{
					required: "必填",
					number: "请输入数字"
				},
				linkmail:{
					required: "必填"
				},
				mphone:{
					required: "必填"
				}
			}			
		});
		
		$("#logisupform").validate({
			rules:{
				start:{
					required: true
				},
				end:{
					required: true
				},
				wayto:{
					required: true
				},
				starttime:{
					required: true
				},
				price:{
					required: true,
					number: true
				}
			},
			messages:{
				start:{
					required: "必填"
				},
				end:{
					required: "必填"
				},
				wayto:{
					required: "必填"
				},
				starttime:{
					required: "必填"
				},
				price:{
					required: "必填",
					number: "请输入数字"
				}
			}			
		});
		
		$("#logidemaform").validate({
			rules:{
				start:{
					required: true
				},
				end:{
					required: true
				},
				logdemend:{
					required: true
				},
				price:{
					required: true,
					number: true
				}
			},
			messages:{
				start:{
					required: "必填"
				},
				end:{
					required: "必填"
				},
				logdemend:{
					required: "必填"
				},
				price:{
					required: "必填",
					number: "请输入数字"
				}
			}			
		});
		
		$("#train").validate({
			rules:{
				orgname:{
					required: true
				},
				ft:{
					required: true
				},
				st:{
					required: true
				},
				ttype:{
					required: true
				},
				tbegin:{
					required: true
				},
				tend:{
					required: true
				},
				pid:{
					required: true
				}
			},
			messages:{
				orgname:{
					required: "必填"
				},
				ft:{
					required: "必选"
				},
				st:{
					required: "必选"
				},
				ttype:{
					required: "必填"
				},
				tbegin:{
					required: "必选"
				},
				tend:{
					required: "必选"
				},
				pid:{
					required: "必填"
				}
			}			
		});
		
		$("#recruitform").validate({
			rules:{
				job:{
					required: true
				},
				properties:{
					required: true
				},
				num:{
					required: true,
					number:true
				},
				treatment:{
					required: true,
					number:true
				},
				emenddate:{
					required: true
				}
			},
			messages:{
				job:{
					required: "必填"
				},
				properties:{
					required: "必选"
				},
				num:{
					required: "必填",
					number: "请输入数字"
				},
				treatment:{
					required: "必填",
					number: "请输入数字"
				},
				emenddate:{
					required: "必选"
				}
			}			
		});
		
	});