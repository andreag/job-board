// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//

// This bit of code is to help trigger the responds_to block so that
// we can be sent back javascript and not html.
jQuery({
  'beforeSend': function(xhr){xhr.setRequestHeader("Accept", "text/javascript")}    
})

$(document).ready(function() {


  // All non-GET requests will add the authenticity token
  // if not already present in the data packet
  $("body").bind("ajaxSend", function(elm, xhr, s) {
    if (s.type == "GET") return;
    if (s.data && s.data.match(new RegExp("\\b" + window._auth_token_name + "="))) return;
    if (s.data) {
      s.data = s.data + "&";
    } else {
      s.data = "";
      // if there was no data, jQuery didn't set the content-type
      xhr.setRequestHeader("Content-Type", s.contentType);
    }

    s.data = s.data + encodeURIComponent(window._auth_token_name) + "=" + encodeURIComponent(window._auth_token);
    });


    // More behaviours
    $(document).ready(function() {
      // All A tags with class 'get', 'post', 'put' or 'delete' will perform an ajax call
      $('a.get').livequery('click', function() {
        $.get($(this).attr('href'));
        return false;
      }).attr("rel", "nofollow");

      ['post', 'put', 'delete'].forEach(function(method) {
        $('a.' + method).livequery('click', function() {
          if ($(this).metadata().confirm &&
              !confirm($(this).metadata().confirm)) return false;
          $.post($(this).attr('href'), "_method=" + method);
          return false;
        }).attr("rel", "nofollow");
      });

      // Professions link 
      $('a.professions').click(function(){
        var link = $('a.professions'); 
        link.hide();
        $('div#more_professions').fadeIn(1500)

        return false;
      });

    });
   

///////////////////////////////////////////////////////////////////////////////////////////////////////
// DROPDOWN MENU AJAX CODE
///////////////////////////////////////////////////////////////////////////////////////////////////////
  
    // Country Dropdown Box 
    // Request all the provinces/states to the specific country
    $('select.country').change(function(eventObject){
        $("select.country option:selected").each(function(){

            // clear major city dropdown 
            $("#city_dropdown_container").css('display', 'none');

            var selected_country = $(this).text();

            if(selected_country != "Canada" && selected_country != "US")
            {
              // make sure previous possible dropdowns are hidden
              $("#state_dropdown_container").css('display', 'none');  
              $("#city_dropdown_container").css('display', 'none');  
              return false;
            }
            $.get("/dropdowns/populate_provinces", {country: selected_country}, function(data){
              // Success, let's fill the dropdown
              $("#address_state").html("<option value='0' selected='selected'>Please Select</option>");
              $("#address_state").append(data);
            }) 

            $("#state_dropdown_container").css('display', 'block').effect("highlight", {}, 700); 
            return false;
        });
    });

    // Build the city dropdown box based on the province/state 
    $('select.state').change(function(eventObject){
      $("select.state option:selected").each(function(){


        var selected_country = $("select.country option:selected").text();
        var selected_province = $(this).text();
        
        $.get("/dropdowns/populate_cities", {country: selected_country, province: selected_province}, function(data){
              // Success, let's fill the dropdown
              $("#address_city").html("<option value='0' selected='selected'>Please Select</option>");
              $("#address_city").append(data);
            }) 
      
        // Show the dropdown
        $("#city_dropdown_container").css('display', 'block');  
        $("#city_dropdown_container").css('display', 'block').effect("highlight", {}, 700); 
        return false;

      });
    });


///////////////////////////////////////////////////////////////////////////////////////////////////////

   /* $("#new_job").submit(function() {
      $.post(($(this).attr("action")), $(this).serialize(), null, "script");
      return false;
    });  
  */

});


