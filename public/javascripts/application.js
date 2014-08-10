$(document).ready( function() {

  window.selectedCount = 0;

  function displayTeamInfo( e ) {
    $('#selected-team-name').text( $(e).data('team-name') );
    $('#selected-project-name').text( $(e).data('project-name') );
    $('#selected-team-members').text( $(e).data('members') );
  };

  $('#team-selection li a').on( 'mouseover', function( e ) {
    displayTeamInfo( this );
  });

  $('#team-selection li a').on( 'click', function( e ) {
    if ( window.selectedCount < 2 ) {
      //$('#team-selection li a').css('font-weight', '');
      $(this).css('font-weight', 'bold');
      displayTeamInfo( this );
      selectedCount++;
      e.preventDefault();
    };

    if ( window.selectedCount == 1 ) {
      $('#extra').text('Please select one more!');
    };

    if( window.selectedCount == 2 ) {
      $('#extra').text('How much do you want to bet?');
      $('#team-selection').addClass('animated bounceOutDown');
      $('#team-info').addClass('animated bounceOutRight');
      $('#bet-form').css('display', 'block');
      $('#bet-form').addClass('animated bounceInUp');
    };
  });
});

