<?php
/**
 * Text input field.
 * @package forms
 * @subpackage fields-basic
 */
class TextField extends FormField {

	/**
	 * @var Int
	 */
	protected $maxLength;
	
	/**
	 * Returns an input field, class="text" and type="text" with an optional maxlength
	 */
	function __construct($name, $title = null, $value = '', $maxLength = null, $form = null) {
		$this->maxLength = $maxLength;
		
		parent::__construct($name, $title, $value, $form);
	}
	
	/**
	 * @param Int $length
	 */
	function setMaxLength($length) {
		$this->maxLength = $length;
	}
	
	/**
	 * @return Int
	 */
	function getMaxLength() {
		return $this->maxLength;
	}

	function Field($attributes = array()) {
		if(!$attributes) $attributes = array(
			'MaxLength' => ($this->getMaxLength()) ? $this->getMaxLength() : null,
			'Size' => ($this->getMaxLength()) ? min($this->getMaxLength(), 30) : null
		);

		return $this->customise($attributes)->renderWith('TextField');
	}

	function InternallyLabelledField() {
		if(!$this->value) $this->value = $this->Title();
		return $this->Field();
	}
	
}