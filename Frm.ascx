<%@ Control Language="C#" AutoEventWireup="true" %>

<%--
	developer.mozilla.org/en-US/docs/Web/HTML/Element/form
	
action
The URL that processes the form submission. This value can be overridden by a formaction attribute on a <button>, <input type="submit">, or <input type="image"> element. This attribute is ignored when method="dialog" is set.	

enctype
If the value of the method attribute is post, enctype is the MIME type of the form submission. Possible values:

application/x-www-form-urlencoded: The default value.
multipart/form-data: Use this if the form contains <input> elements with type=file.
text/plain: Useful for debugging purposes.

This value can be overridden by formenctype attributes on <button>, <input type="submit">, or <input type="image"> elements.


method
get (default): The GET; form data appended to the action URL with a ? separator. 
dialog: When the form is inside a <dialog>, closes the dialog and causes a submit event to be fired on submission, without submitting data or clearing the form.

This value is overridden by formmethod attributes on <button>, <input type="submit">, or <input type="image"> elements.	

novalidate
This Boolean attribute indicates that the form shouldn't be validated when submitted. If this attribute is not set (and therefore the form is validated), it can be overridden by a formnovalidate attribute on a <button>, <input type="submit">, or <input type="image"> element belonging to the form.

target
_unfencedTop: Load the response from a form inside an embedded fenced frame into the top-level frame (i.e., traversing beyond the root of the fenced frame, unlike other reserved destinations). Only available inside fenced frames.
This value can be overridden by a formtarget attribute on a <button>, <input type="submit">, or <input type="image"> element.	
	--%>
