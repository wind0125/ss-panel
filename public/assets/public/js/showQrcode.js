/**
 * Created by fanny on 16-8-6.
 */

function showQrcode(nodeId) {
    var qrcodes = $('#hidden-qrcode-info')[0].innerText;

    eval("var data="+qrcodes);

    jQuery('#show-qrcode').qrcode({
        "text": data[nodeId]
    });

    $('#qrcode-modal').on('hidden.bs.modal', function (e) {
        $('#show-qrcode').html("");
    })

    $('#qrcode-modal').modal('show');


}

