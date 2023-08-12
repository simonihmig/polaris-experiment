import { Clock } from './clock';
import { Excite } from './excite';

import type { TOC } from '@ember/component/template-only';

const Welcome: TOC<{ Args: {}, Blocks: {} }> = <template>
  <header>
    <img src='/images/logo.png' width='50' height='50' alt='an unofficial polaris logo. a gold compass rose sits in a space setting with kaleidoscopic colors showing through the compass.' />
    <h1>Welcome to Polaris</h1>
  </header>
  <main>
    <div class='title'>
      <h2>Learning Resources</h2>
      <aside>The time is <span>{{Clock}}</span></aside>
    </div>
    <ul>
      <li>
        <a href="https://tutorial.glimdown.com">Tutorial</a>
          <span>Get familiar with Ember's new file format, programming patterns, paradigms, and new way of thinking about reactivity</span>
      </li>
      <li>
      <a href="https://github.com/NullVoxPopuli/ember-resources/tree/main/docs/docs">Docs: Resources</a>
        <span>Learn about the new reactivity primitive</span>
        </li>
      <li>
        <a href="https://github.com/jmurphyau/ember-truth-helpers">ember-truth-helpers</a>
        <span>Additional template helpers (coming soon to Ember.js)</span>
      </li>
      <li>
        <a href="https://typescript.org">TypeScript</a>
        <span>TypeScript always enabled, always optional</span>
      </li>
      <li>
        <a href="https://vitejs.dev/">Vite</a><span>* Coming soon by default</span>
      </li>
    </ul>

    <ul>
      <li>
        <a href="https://stackblitz.com/github/nullVoxPopuli/polaris-starter/tree/main"> StackBlitz </a>
        <span> Try it on StackBlitz</span>
      </li>

      <li>
        <a href="https://stackblitz.com/github/nullVoxPopuli/polaris-starter/tree/monorepo"> StackBlitz (mono-repo) </a>
        <span> Try the mono-repo version on StackBlitz</span>
      </li>

      <li>
        <a href="https://discord.gg/emberjs">Discord</a>
        <span>Join the community Discord</span>
      </li>
    </ul>

    <div class='footer'>
      <a href="https://github.com/NullVoxPopuli/polaris-starter/tree/main" class='github'>Fork Starter Project on GitHub</a>
    </div>

      <Excite />
  </main>
</template>;

export default Welcome;
