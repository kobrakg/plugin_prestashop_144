{*
*	ver. 0.1.2
*	PayU Payment Modules
*	
*	@copyright  Copyright 2012 by PayU
*	@license    http://opensource.org/licenses/LGPL-3.0  Open Software License (LGPL 3.0)
*	http://www.payu.com
*	http://twitter.com/openpayu
*}
{capture name=path}{l s='Shipping'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}

<h2>{l s='Order summary' mod='payu'}</h2>

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

<form action="{$summaryUrl}" method="post" id="payu_form">
<input type="hidden" name="sessionId" value="{$sessionId}">
<input type="hidden" name="oauth_token" value="{$oauthToken}">
<input type="hidden" name="lang" value="{$langCode}">
{l s='Wybrano metodę płatności "Płacę w payu.pl". Kliknij w przycisk aby przejść do serwisu PayU.' mod='payu'}
    <p class="cart_navigation">
    {if $id_customer > 0}
        <a href="{$base_dir_ssl}order.php?step=3" class="button_large">{l s='Powrót do metod płatności' mod='payu'}</a>
    {/if}
        <input type="submit" name="submit" value="{l s='Płacę w payu.pl' mod='payu'}" class="exclusive_large" />
    </p>
</form>