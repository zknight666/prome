$(function () {
  $.ajax({
    url: "/prome/project/getProject",
    type: "GET",
    data: {
      project_id: "38",
    },
    dataType: "json",
    success: function (data) {
      console.log(data);
      // 요청에 성공한 경우, 받은 데이터를 이용하여 프로젝트 정보를 출력
      $("div#team-leader").text(data.team_leader);
      $("div#title").text(data.title);
      $("div#field").text(data.field);
      $("div#content").html(data.content);
      $("div#start-date").text(new Date(data.start_date).toLocaleDateString());
      $("div#due-date").text(new Date(data.due_date).toLocaleDateString());
      //		$('div#member').text(data.member_joined);
      $("#member-need").text(data.member_need);
      $("#created-at").text(new Date(data.created_at).toLocaleDateString());
      $("#recruit-state").text(data.recruit_state);

      // 아이콘 영역
      $.ajax({
        url: "/prome/project/getChosenTech",
        type: "GET",
        data: {
          projectId: "38",
        },
        dataType: "json",
        success: function (data) {
          console.log(data);
          console.log(data[0]);
          var techLan_icon = "";

          for (let i = 0; i < 25; i++) {
            if (data[i] == "FIGMA") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/figma.png" ><br><span>android</span></div>';
            } else if (data[i] == "PHOTOSHOP") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/photoshop.png" ><br><span>photoshop</span></div>';
            } else if (data[i] == "IOS") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/ios.png" ><br><span>ios</span></div>';
            } else if (data[i] == "ANDROID") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/android.png" ><br><span>android</span></div>';
            } else if (data[i] == "REACT") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/react.png" ><br><span>react</span></div>';
            } else if (data[i] == "VUE") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/vue.png" ><br><span>vue</span></div>';
            } else if (data[i] == "FLUTTER") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/flutter.png" ><br><span>flutter</span></div>';
            } else if (data[i] == "HTML_CSS") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/html.png" ><br><span>html</span></div>';
            } else if (data[i] == "JAVASCRIPT") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/java.png" ><br><span>java</span></div>';
            } else if (data[i] == "SPRING") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/spring.png" ><br><span>spring</span></div>';
            } else if (data[i] == "JAVA") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/java.png" ><br><span>java</span></div>';
            } else if (data[i] == "KOTLIN") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/kotlin.png" ><br><span>kotlin</span></div>';
            } else if (data[i] == "NODE_JS") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/nodejs.png" ><br><span>nodejs</span></div>';
            } else if (data[i] == "MONGODB") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/mongodb.png" ><br><span>mongodb</span></div>';
            } else if (data[i] == "C_C#") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/cc.png" ><br><span>cc</span></div>';
            } else if (data[i] == "GIT") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/git.png" ><br><span>git</span></div>';
            } else if (data[i] == "AWS") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/aws.png" ><br><span>aws</span></div>';
            } else if (data[i] == "DOCKER") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/docker.png" ><br><span>docker</span></div>';
            } else if (data[i] == "KUBERNETES") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/kubernetes.png" ><br><span>kubernetes</span></div>';
            } else if (data[i] == "TENSORFLOW") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/tensorflow.png" ><br><span>tensorflow</span></div>';
            } else if (data[i] == "UNITY") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/unity.png" ><br><span>unity</span></div>';
            } else if (data[i] == "PYTHON") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/python.png" ><br><span>python</span></div>';
            } else if (data[i] == "MYSQL") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/mysql.png" ><br><span>mysql</span></div>';
            } else if (data[i] == "TYPESCRIPT") {
              techLan_icon =
                techLan_icon +
                '<div id="techLan" class="techLan_icon"><img src="../assets/icon/typescript.png" ><br><span>typescript</span></div>';
            }
          } //for

          $("div#techLan").html(techLan_icon);

          // 리더 아이콘 영역
          $.ajax({
            url: "/prome/users/teamLeader",
            type: "GET",
            data: {
              teamLeader: "byun",
            },
            dataType: "json",
            success: function (data) {
              console.log(data);
              console.log(data[0]);
              var leaderTech_icon = "";

              for (let i = 0; i < 25; i++) {
                if (data[i] == "FIGMA") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/figma.png" >';
                } else if (data[i] == "PHOTOSHOP") {
                  leaderTech_icon =
                    leaderTech_icon +
                    '<img src="../assets/icon/photoshop.png" >';
                } else if (data[i] == "IOS") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/ios.png" >';
                } else if (data[i] == "ANDROID") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/android.png" >';
                } else if (data[i] == "REACT") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/react.png" >';
                } else if (data[i] == "VUE") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/vue.png" >';
                } else if (data[i] == "FLUTTER") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/flutter.png" >';
                } else if (data[i] == "HTML_CSS") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/html.png" >';
                } else if (data[i] == "JAVASCRIPT") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/java.png" >';
                } else if (data[i] == "SPRING") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/spring.png" >';
                } else if (data[i] == "JAVA") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/java.png" >';
                } else if (data[i] == "KOTLIN") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/kotlin.png" >';
                } else if (data[i] == "NODE_JS") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/nodejs.png" >';
                } else if (data[i] == "MONGODB") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/mongodb.png" >';
                } else if (data[i] == "C_C#") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/cc.png" >';
                } else if (data[i] == "GIT") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/git.png" >';
                } else if (data[i] == "AWS") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/aws.png" >';
                } else if (data[i] == "DOCKER") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/docker.png" >';
                } else if (data[i] == "KUBERNETES") {
                  leaderTech_icon =
                    leaderTech_icon +
                    '<img src="../assets/icon/kubernetes.png" >';
                } else if (data[i] == "TENSORFLOW") {
                  leaderTech_icon =
                    leaderTech_icon +
                    '<img src="../assets/icon/tensorflow.png" >';
                } else if (data[i] == "UNITY") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/unity.png" >';
                } else if (data[i] == "PYTHON") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/python.png" >';
                } else if (data[i] == "MYSQL") {
                  leaderTech_icon =
                    leaderTech_icon + '<img src="../assets/icon/mysql.png" >';
                } else if (data[i] == "TYPESCRIPT") {
                  leaderTech_icon =
                    leaderTech_icon +
                    '<img src="../assets/icon/typescript.png" >';
                }
              } //for

              $("div#leaderTech").html(leaderTech_icon);
            },
            error: function (xhr, status, error) {
              // 요청에 실패한 경우, 오류 메시지를 출력
              console.log("Error:", status, xhr.responseText);
            },
          }); //$.ajax
        }, //success
      }); //$.ajax
    }, //success
  }); //$.ajax
});
