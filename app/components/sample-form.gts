import Component from '@glimmer/component';
import { action } from '@ember/object';

import Button from '@crowdstrike/ember-toucan-core/components/button';
import ToucanForm from '@crowdstrike/ember-toucan-form/components/toucan-form';

interface SampleFormData {
  firstName?: string;
  lastName?: string;
  comment?: string;
  fruit?: 'banana' | 'apple' | 'pear';
  vegetable?: 'avocado' | 'broccoli';
  terms?: boolean;
}

const data: SampleFormData = {};

function handleSubmit(data: SampleFormData) {
  console.log({ data });

  alert(
    `Form submitted with:\n${Object.entries(data)
      .map(([key, value]) => `${key}: ${value}`)
      .join('\n')}`,
  );
}

<template>
  <ToucanForm
    class='space-y-4 max-w-xs'
    @data={{data}}
    @onSubmit={{handleSubmit}}
    as |form|
  >
    <form.Input @label='First name' @name='firstName' required />
    <form.Input @label='Last name' @name='lastName' required />
    <form.Textarea @label='Comment' @name='comment' required />

    <form.CheckboxGroup @label='Fruit selection' @name='fruit' as |group|>
      <group.CheckboxField
        @label='Banana'
        @value='banana'
        required
        data-checkbox-group-1
      />
      <group.CheckboxField
        @label='Apple'
        @value='apple'
        required
        data-checkbox-group-2
      />
      <group.CheckboxField
        @label='Pear'
        @value='pear'
        required
        data-checkbox-group-3
      />
    </form.CheckboxGroup>

    <form.RadioGroup @label='Vegetable selection' @name='vegetable' as |group|>
      <group.RadioField @label='Avocado' @value='avocado' data-radio-1 />
      <group.RadioField @label='Broccoli' @value='broccoli' data-radio-2 />
    </form.RadioGroup>

    <form.Checkbox @label='Agree to the Terms' @name='terms' required />

    <Button type='submit'>Submit</Button>
  </ToucanForm>
</template>
