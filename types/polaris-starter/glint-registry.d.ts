import '@glint/environment-ember-loose';
import '@glint/environment-ember-loose/native-integration';

import type { HelperLike } from '@glint/template';
// import type { ComponentLike, HelperLike, ModifierLike } from "@glint/template";
import type SampleForm from 'polaris-starter/components/sample-form';

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    // Examples
    // state: HelperLike<{ Args: {}, Return: State }>;
    // attachShadow: ModifierLike<{ Args: { Positional: [State['update']]}}>;
    SampleForm: typeof SampleForm;

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    'page-title': HelperLike<{ Args: { Positional: any[] }; Return: string }>;
  }
}
