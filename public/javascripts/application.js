$(document).ready( function() {

  function displayTeamInfo( e ) {
    $('#selected-team-name').text( $(e).data('team-name') );
    $('#selected-project-name').text( $(e).data('project-name') );
    $('#selected-team-members').text( $(e).data('members') );
  };
  $('#team-selection li a').on( 'click', function( e ) {
    $('#team-selection li a').css('font-weight', '');
    $(this).css('font-weight', 'bold');
    displayTeamInfo( this );

    e.preventDefault();
  });
});
